require 'net/https'
require 'uri'
require 'json'

def login_nicovideo(mail, pass)
  host = 'secure.nicovideo.jp'
  path = '/secure/login?site=niconico'
  body = "mail=#{mail}&password=#{pass}"

  https = Net::HTTP.new(host, 443)
  https.use_ssl = true
  https.verify_mode = OpenSSL::SSL::VERIFY_NONE
  response = https.start { |https|
    https.post(path, body)
  }

  cookie = ''
  response['set-cookie'].split('; ').each do |st|
    if idx = st.index('user_session_')
      cookie = "user_session=#{st[idx..-1]}"
      break
    end
  end
  return cookie
end

def get_flv_info(cookie, video_id)
  host = 'flapi.nicovideo.jp'
  path = "/api/getflv/#{video_id}"

  response = Net::HTTP.new(host).start { |http|
    request = Net::HTTP::Get.new(path)
    request['cookie'] = cookie
    http.request(request)
  }

  flv_info = {}
  response.body.split('&').each do |st|
    stt = st.split('=')
    flv_info[stt[0].to_sym] = stt[1]
  end

  return flv_info
end

def get_comments(flv_info, res_form)
  host = URI.unescape(flv_info[:ms])
  request = host.gsub(/\/api\//, '/api.json/') + 'thread?thread=' + flv_info[:thread_id] + '&version=20061206&res_from=-' + res_form.to_s

  uri = URI.parse(request)
  json = Net::HTTP.get(uri)
  comments = JSON.parse(json)

  return comments
end
