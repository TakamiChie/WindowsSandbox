# WindowsSandbox
Windowsサンドボックスの基本構成を管理するよ

ホストマシン上でパスの問題を自動的に解決するのでどのフォルダに置いても使えるバージョン。

好きなフォルダにファイルを配置し、`sandbox.ps1`を実行します。

Windows Sandbox自体がWindows 10 Pro以上の機能であるため、Windows 10 Proが必須です。

## 各種構成紹介

### basic

Windows 10 2009で使える基本構成。わたしはWebアプリのスクリーンショット撮影などに使っている。

* インストール
  * Chocolaty
  * 最新版のEdge
* 設定
  * タスクバーを隠す
  * 時計を日本語表記に変更する

Windows 10 2009 VerのWindowsサンドボックスでは`logoncommand`にコマンドプロンプトを指定すると構成エラーとなって落ちるというバグ(？)があるようなので`run.cmd`を直接起動することができない。

そのためエクスプローラーでスクリプトのあるフォルダを開く。サンドボックス上で`run.cmd`を起動して待つと良い。

### wordpress

* インストール
  * Chocolaty
  * 最新版のEdge
  * XAMPP8.0
  * WordPress(C:\xampp\htdocs\wordpressにインストールされる)
* 設定
  * 時計を日本語表記に変更する

`run.cmd`を実行して初期処理が終わったら、スタートメニューのXAMPPコントロールパネルよりApacheとMySQLを起動、http://127.0.0.1/wordpressを開くとWordPressにいける。

データベースは必要ならphpmyadminで作っておくこと。ユーザー名はroot、パスワードは空でいける。
