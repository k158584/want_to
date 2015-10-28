# coding: utf-8
steps_for :toppage do
  step 'トップ画面を表示する' do
    visit '/'
  end

  step 'トップ画面が表示されていること' do
    expect(current_path).to satisfy { |p| ['/', '/home/index'].include?(p) }
  end
end
