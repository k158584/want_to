# encoding: utf-8
# language: ja
@toppage
機能: 動画検索画面を開く
  シナリオ: サインアップする
	もし user のテストデータを作成する
    かつ サインアップする
	ならば 動画検索画面が表示されていること

  シナリオ: 動画検索画面にアクセスする
	もし user のテストデータを作成する
    かつ ログインする
	ならば 動画検索画面が表示されていること

  シナリオ: 動画検索画面でsm9で検索する
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に sm9 と入力する
    かつ 再生 ボタンをクリックする
    ならば sm9 の再生画面が表示されていること

  シナリオ: 動画検索画面でsm32で検索する
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に sm32 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
	かつ メッセージ "動画ID : sm32 は見つかりません。動画は存在しないか、削除された可能性があります" が表示されていること
    かつ "input[name=q]" の値が sm32 であること

  シナリオ: 動画検索画面でso23698047で検索する 
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に so23698047 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
	かつ メッセージ "動画ID : so23698047 はチャンネル動画なのでniconicoで課金して見てね！" が表示されていること
    かつ "input[name=q]" の値が so23698047 であること

  シナリオ: 動画検索画面で1381804974で検索する 
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に 1381804974 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
	かつ メッセージ "動画ID : 1381804974 はチャンネル動画なのでniconicoで課金して見てね！" が表示されていること
    かつ "input[name=q]" の値が 1381804974 であること

  シナリオ: 動画検索画面でsm17524387で検索する 
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に sm17524387 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
	かつ メッセージ "動画ID : sm17524387 はniconico公式でのみ視聴可能です！" が表示されていること
    かつ "input[name=q]" の値が sm17524387 であること

  シナリオ: 動画検索画面でza3028319で検索する 
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に za3028319 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
	かつ メッセージ "keyword : za3028319 だと再生可能な動画が表示できません" が表示されていること
    かつ "input[name=q]" の値が za3028319 であること

  シナリオ: 動画検索画面で 遠隔技術 で検索する 
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に 遠隔技術 と入力する
    かつ 再生 ボタンをクリックする
    ならば 遠隔技術動画が表示されていること

  シナリオ: 動画検索画面でこのタグは存在しませんで検索する
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に このタグは存在しません と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
    かつ メッセージ "keyword : このタグは存在しません だと再生可能な動画が表示できません" が表示されていること

  シナリオ: 動画検索画面で何も入力せずに検索する
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
    かつ メッセージ "キーワードが入力されていません" が表示されていること

  シナリオ: 動画検索画面でsm32で検索すると検索ワードが残る
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に sm32 と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
    かつ "input[name=q]" の値が sm32 であること

  シナリオ: 動画検索画面でこのタグは存在しませんで検索すると検索ワードが残る
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に このタグは存在しません と入力する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
    かつ "input[name=q]" の値が このタグは存在しません であること

  シナリオ: 動画検索画面で何も入力せずに検索すると検索ワードが残る
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ 再生 ボタンをクリックする
    ならば 動画検索画面が表示されていること
    かつ "input[name=q]" の値が "" であること
  
  シナリオ: 動画検索画面で蒼穹のファフナーEXODUSと入力して検索すると、勝手に入るゴミ箱作った以外の動画が表示される
	もし user のテストデータを作成する
    かつ ログインする
    かつ 動画検索画面を表示する
    かつ q に 蒼穹のファフナーEXODUS と入力する
    かつ 再生 ボタンをクリックする
    ならば sm18391671 以外のの再生画面が表示されていること

  シナリオ: TOPページ画面でfacebookログインを押すと、facebookのメールアドレスが表示される
        もし 動画検索画面を表示する
     かつ Facebookにログインする
     ならば メッセージ '11111-facebook@example.com' が表示されていること