# encoding: utf-8
# language: ja
@toppage
機能: トップ画面を開く
  シナリオ: トップ画面にアクセスする
    もし トップ画面を表示する
    ならば トップ画面が表示されていること

  シナリオ: トップ画面でsm9で検索する
    もし トップ画面を表示する
    かつ q に sm9 と入力する
    かつ 再生 ボタンをクリックする
    ならば sm9 の再生画面が表示されていること

  シナリオ: トップ画面でsm32で検索する
    もし トップ画面を表示する
    かつ q に sm32 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
	かつ メッセージ "動画ID : sm32 は見つかりません。動画は存在しないか、削除された可能性があります" が表示されていること
    かつ "input[name=q]" の値が sm32 であること

  シナリオ: トップ画面でso23698047で検索する 
    もし トップ画面を表示する
    かつ q に so23698047 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
	かつ メッセージ "動画ID : so23698047 はチャンネル動画なのでniconicoで課金して見てね！" が表示されていること
    かつ "input[name=q]" の値が so23698047 であること

  シナリオ: トップ画面で1381804974で検索する 
    もし トップ画面を表示する
    かつ q に 1381804974 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
	かつ メッセージ "動画ID : 1381804974 はチャンネル動画なのでniconicoで課金して見てね！" が表示されていること
    かつ "input[name=q]" の値が 1381804974 であること

  シナリオ: トップ画面でsm17524387で検索する 
    もし トップ画面を表示する
    かつ q に sm17524387 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
	かつ メッセージ "動画ID : sm17524387 はniconico公式でのみ視聴可能です！" が表示されていること
    かつ "input[name=q]" の値が sm17524387 であること

  シナリオ: トップ画面でza3028319で検索する 
    もし トップ画面を表示する
    かつ q に za3028319 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
	かつ メッセージ "keyword : za3028319 だと動画が見つからないよ！" が表示されていること
    かつ "input[name=q]" の値が za3028319 であること

  シナリオ: トップ画面で 遠隔技術 で検索する 
    もし トップ画面を表示する
    かつ q に 遠隔技術 と入力する
    かつ 再生 ボタンをクリックする
    ならば 遠隔技術動画が表示されていること

  シナリオ: トップ画面でこのタグは存在しませんで検索する
    もし トップ画面を表示する
    かつ q に このタグは存在しません と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ メッセージ "keyword : このタグは存在しません だと動画が見つからないよ！" が表示されていること

  シナリオ: トップ画面で何も入力せずに検索する
    もし トップ画面を表示する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ メッセージ "キーワードが入力されていません" が表示されていること

  シナリオ: トップ画面でsm32で検索すると検索ワードが残る
    もし トップ画面を表示する
    かつ q に sm32 と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ "input[name=q]" の値が sm32 であること

  シナリオ: トップ画面でこのタグは存在しませんで検索すると検索ワードが残る
    もし トップ画面を表示する
    かつ q に このタグは存在しません と入力する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ "input[name=q]" の値が このタグは存在しません であること

  シナリオ: トップ画面で何も入力せずに検索すると検索ワードが残る
    もし トップ画面を表示する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ "input[name=q]" の値が "" であること
  シナリオ: トップ画面で何も入力せずに検索すると検索ワードが残る
    もし トップ画面を表示する
    かつ 再生 ボタンをクリックする
    ならば トップ画面が表示されていること
    かつ "input[name=q]" の値が "" であること
