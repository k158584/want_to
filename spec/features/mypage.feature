# encoding: utf-8
# language: ja
@mypage
機能: マイページを開く
  シナリオ: マイページを表示する
    もし user のテストデータを作成する
    かつ 'user@test.com' と 'userpassword' でログインする
    かつ マイページを表示する
    ならば マイページが表示されていること

  シナリオ: マイページに自分の付箋一覧が表示されている
    もし bookmark_user のテストデータを作成する
    かつ user のテストデータを作成する
    かつ 'bookmark_user@example.com' と 'hogehoge' でログインする
    かつ マイページを表示する
    ならば 要素 'li.bookmark' が 4 個存在すること

  シナリオ: ログインしてない状態ではマイページが見られない
    もし bookmark_user のテストデータを作成する
    かつ user のテストデータを作成する
    かつ マイページを表示する
    ならば ログイン画面が表示されていること
