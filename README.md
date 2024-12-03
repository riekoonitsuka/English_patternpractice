# English_patternpractice
■サービス概要
どんなサービスなのかを３行で説明してください。
英語学習のためのアプリです。特に、スピーキング力向上と英語脳習得に焦点を当てています。パターンプラクティスと瞬間英作文を通した英文の反復発話練習により、スピーキングに必要な口と脳の”筋トレ”ができます。

■ このサービスへの思い・作りたい理由
このサービスの題材となるものに関してのエピソードがあれば詳しく教えてください。
このサービスを思いつくにあたって元となる思いがあれば詳しく教えてください。
英単語や文法はある程度身に付いていて、リスニングやリーディングの能力が高くても、話せない英語学習者がいます。ある民間の調査では、実用レベルの英会話力が使える日本人はわずか7%との発表もあります。平均で25%を超える外国人と比べると、大幅に低い数値とのことです。
私自身、オンライン英会話や海外ドラマなど様々な学習法を試してきましたが、スピーキング力だけは、なかなか向上しませんでした。
そんな折、Youtubeや本などで様々な英語学習方法に触れ、リスニングやリーディングを鍛える方法と、スピーキングを鍛える方法は違うことに気づきました。
スピーキング力向上には、英語を発音する「口」の筋トレと、英語の語順が身についた「英語脳」が必要だと考えます。
そして、英語脳と口を鍛えられる方法として、語順を意識しながら行うパターンプラクティスが有効です。
気軽に、パターンプラクティスができるアプリを作りたいと思いました。

■ ユーザー層について
決めたユーザー層についてどうしてその層を対象にしたのかそれぞれ理由を教えてください。
・中学レベルの単語と英文法の復習をしたい人。
・英語のスピーキングを向上させたいと思っている人。

■サービスの利用イメージ
ユーザーがこのサービスをどのように利用できて、それによってどんな価値を得られるかを簡単に説明してください。
・パターンプラクティス
1つ文章（型）について、指示された条件に沿って、一部（文型や語句）に変化を加えて、瞬間英作文をする。
・英文ブックマーク機能
学んだ英文を都度マイページに保存しておき、後で振り返ることができる。

■ ユーザーの獲得について
想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。
ユーザー登録不要でパターンプラクティス・瞬間英作文が体験できます。
ユーザー登録を行うと、今までの学習内容の記録や英文のブックマークが可能となります。

■ サービスの差別化ポイント・推しポイント
似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。
瞬間英作文の本や、受験英語に特化した英文法テキスト、英単語を正しい語順に並び替えるゲームアプリ、ビジネス英会話に特化したパターンプラクティスのアプリはありますが、「中学レベルの英文法」×「パターンプラクティス」のアプリは、見当たりませんでした。
また、日本語文章と英語文章が示された文字ベースがほとんどで、英語の語順を意識した画像が提示されるアプリは見当たりませんでした。
画像を見て頭の中で場面をイメージしながら、英作文をすることで、ただの音真似になることを防ぎ、より効果的に英語脳を作ることができます。

■ 機能候補
現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。
１．質問表示・正解英文の音声確認機能（パターンプラクティスをする。＝出された条件に従って、基本文の語順や語句に変化を加えて、瞬間英作文をする。）
２．ユーザー登録とログイン機能
３．英文のブックマーク機能
４．学習時間の記録・管理機能

■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。
フレームワーク：Ruby on Rails
インフラ：Heroku
データベース：MySQL
ファイルサーバー：未定
CSS：未定
その他：Sorcery, Mailer, letter_opener_web, CarrierWave, Web Speech API