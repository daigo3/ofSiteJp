<%inherit file="/_templates/slideshow.mako" />

<h1>about</h1>
<div id="myslides">
<img src="0.jpg" />
<img src="1.jpg" />
<img src="2.jpg" />
<img src="3.jpg" />
<img src="4.jpg" />
<img src="5.jpg" />
<img src="6.jpg" />
<img src="7.jpg" />
<img src="8.jpg" />
</div>
<br/>

openFrameworksは、シンプルで先端的なフレームワークによって創作活動を支援するための[オープンソース](license.html)の[C++](https://en.wikipedia.org/wiki/C%2B%2B)ツールキットです。ツールキットは、以下のリストあげたよく利用されるライブラリー群をまとめて汎用的な「糊」のような役割を果たすようにデザインされています。

* グラフィクス：[OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/), [cairo](http://cairographics.org/)
* オーディオの入出力と分析：[rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/) or [FMOD](http://www.fmod.org/), [Kiss FFT](http://kissfft.sourceforge.net/)
* フォント：[FreeType](http://freetype.sourceforge.net/index2.html)
* イメージの読込と保存：[FreeImage](http://freeimage.sourceforge.net/)
* 動画の再生と取込：[Quicktime](http://developer.apple.com/quicktime/), [videoInput](https://github.com/ofTheo/videoInput)
* 様々なユーティリティー：[Poco](http://pocoproject.org/)

コードは様々なプラットフォームで動作するように書かれています。現在は、5つのOS(Windows, OSX, Linux, iOS, Android)と、4つの開発環境(XCode, Code::Blocks, and Visual Studio, Eclipse)をサポートしています。APIは最小限で把握し易いようデザインされています。

簡単に言うと、openFrameworksはコードにまつわる様々な事柄をずっと容易にしてくれるツールなのです。わたしたちはこのツールをとても便利と感じています、きっとあなたもそうなるでしょう。

openFrameworksは[ザック・リーバーマン(Zach Lieberman)](http://thesystemis.com/)、[セオドア・ワトソン(Theodore Watson)](http://muonics.net/), [アルトロ・カストロ(Arturo Castro)](http://arturocastro.net/)を中心にして、[OFコミュニティー](../community/)とともに開発されています。openFramewokrsは以下2つの先駆的なプロジェクトの恩恵を受けています。

* [Processing](http://processing.org/)：[ケーシー・リーズ(Casey Reas)](http://reas.com/)と[ベン・フライ(Ben Fry)](http://benfry.com/)を中心に開発された開発環境
* ACUツールキット：ベン・フライらによって[MITメディアラボのAesthetics and Computation Group](http://acg.media.mit.edu/)で開発されたC++ライブラリ

----------------

デザイン哲学
--------

openFrameworksの開発は、**分散化**されています。[多くの人々](https://github.com/openframeworks/openFrameworks/contributors)の参加、[活発な議論](http://forum.openframeworks.cc/)、[アドオン](http://ofxaddons.com/)と[プロジェクト](../gallery)への貢献によって繁栄しています。わたしたちは、openFrameworksをまず自分自身のために利用し、その後エコシステムに還元することを推奨しています。

openFrameworksは**一貫**していて**感覚的**：openFrameworksは、「驚き最小の原則」に基いています。つまり、openFrameworksの一部を学べば、その他のパートにも容易に応用可能です。初心者はopenFrameworksをプログラミングのパターンの基礎を学ぶために使用できます。さらに進んだユーザーは、他のツールキットや言語で実装したや自分自身の経験をopenFrameworksに応用することが可能です。

openFrameworksは**ユーザビリティ**と**シンプリシティ**のバランスを保つようにしています。初期バージョンの頃は、openFrameworksは主にC++とOpenGLの教育のために用いられていました。しかし時が経つにつれ、豊富な実例がより進んだ応用的な内容に最適な学習方法になってきていました。

openFrameworksは、**クロスプラットフォーム**です。openFrameworksは様々な開発環境とオペレーティングシステムを可能な限りサポートします。openFrameworksをダウンロードする際にはプラットフォームと開発環境が選択可能です。そして、様々なサンプルとプロジェクトが付属してきます。移植が困難なコードは主要パートとは別に隔離されていて、アドオンとして提供されます。

openFrameworksは**パワフル**です。例えばOpenCVのライブラリのようにグラフィクスカードなどのハードウェアを効果的に使用したり、カメラなどの周辺機器に接続したりするような際に効力を発揮します。

openFrameworksは**拡張性**があります。もしopenFrameworksに何かが欠けているのき気付いたら、拡張のためのアドオンは簡単に作成可能です。openFramewroksでは一般的に、新規に機能を開発するよりも、アドオンとしてライブラリに組み込まれて使用されます。openFrameworksにライブラリが格納されても、ライブラリは将来のハッキングのために外部に晒されています。

----------------

faq
--------

**なぜ、多くの既存のライブラリではなく、また別のライブラリを作成したのですか?**

ソフトウェアを簡単に作るためのたくさんのライブラリが、存在します。例えばOpenGLには多くのライブラリ、例えばogre、irrlicht、JUCE、SDL、mxWindowsなどがあります。

openFrameworksは本来、開発の代替手段の「骨組」を提供することを意味していました。我々は、オーディオビジュアルな作品をC++で実現するための最小限の要求を満たすようなライブラリを記述したいと思っていました。

時が経つにつれ、openFrameworksはより強靭なツールキットへと進化していきました。現在、最大の変化は利用者です。我々の未来の利用者は、コンピュータを創作のためや芸術表現、メディア内部の低レベルなデータにアクセスして、操作、分析、探索をしたいと考えているような種類の人々なのです。
 
**なぜ、これらのライブラリをまとめたのですか?**

わたしたちは、これまでの経験から判断し、最もクリーンでシンプルなAPIを持つもの、最も寛大なライセンスのもの、組み込みが最も簡単なもの、という基準でライブラリ選択しました。

例えば、ウィンドウのためのライブラリにはGLUTを選択しました。なぜなら、GLUTは最も普及していて、ライセンスが緩やかで、コンパイラやプラットフォームによって非互換な部分がほとんどないからです。わたしたちは、その他のウィンドウ関連のライブラリ、例えばglfwやmxWindowsなども使ってきました。実際にそれらをopenFrameworksにくっつけてみたこともありました。しかし、最終的には、最も簡単に取り扱うことのできるGLUTを選択しました。

**最新版のopenFrameworksは、どこにありますか?**

最新版のリリースは、[ダウンロードページ](../downloads)にあります。同じものは、GitHub(https://github.com/openframeworks/openFrameworks/)からも入手可能です。さらに、開発中の最新のスナップショットは、[develop branch](https://github.com/openframeworks/openFrameworks/tree/develop)にあります。GitHubからoFをビルドするための詳細な情報は、[readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt)を参照してください。GitHubに参加したい場合は、[oFとGitHubに関する文書](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)を参照してださい。

**何か助けになることはありますか?**

アドオンを作成すること、ドキュメントを改良すること、チュートリアルやインストラクションを作成などを通じて助けになることが可能です。もしoFを既に使用して興味を持ったなら、できる限りソースや情報やアイデアを投稿してください。まだ初心者なら、どういった部分が難しいのか記録をとってフォーラムに質問したり、他の人達が何をしていて何を考えているのかを知ることで、わたしたちの活動に参加することができます。

**なぜopenFrameworksは、実行ファイルではなく、ソースコードで配布しているのですか?**

色々な理由があります ― 第一に、実践的だからです。openFrameworksはまだ発展途上です。我々は進むべき方向にむかって変化を加えていくでしょう。 コードを閲覧可能にして変更を容易にしておくことで、わたしたち多くの問題や困難についてのフィードバックを得ることができます。第二に、教育的だからです。C++のライブラリと格闘することを学ぶための好奇心を与えることがとても良い出発点になります。第三に、openFrameworksに変化を加えたり、趣味や気のおもむくままに自分にあわせて変更することに対して開かれた環境となっているからです。

**C++を学ぶには?**

わたしたちは、openFrameworksをC++の教育用のツールとしてはとらえていません。しかし、openFrameworksがC++にとりかかるための「最初の一歩」となるのではと考えています。[フォーラム](http://forum.openframeworks.cc/)では活発なコミュニティーを運営していますので、そこで質問すると良いでしょう。

わたしたちは以下のサイトもお薦めします：

* [5日で学ぶCとC++][6] by Philip Machani：これまで見たC++習得のための文書で一番わかり易い資料です
* [ProcessingユーザのためのoFチュートリアル][7] by Zach Gage：Processingのコードから学びたい人へ
* [CユーザのタメのC++チュートリアル][12] ：Cのコードから学びたい人へ
* [Programming Interactivity][8] by Joshua Noble：openFrameworksのバージョン0062だけでなく、ProcessingやArduinoに関してもカバーしています
* [StackOverflow][11]：全般的な質問や、より難解な質問をするのにも適した、素晴しいコミュニティーです
* [C++ FAQ](http://www.parashift.com/c++-faq-lite/index.html) by Marshall Clineと[C++ FQA Lite](http://yosefk.com/c++fqa/index.html) by Yossi Kreinin
* [cppreference.com/wiki/][15]：汎用的なテンプレートのライブラリのリファレンスとして適しています
* [cplusplus.com](http://cplusplus.com)：とても素晴しい[C++言語のチュートリアル][9]と[リファレンス][10]です
* [cprogramming.com][13]：沢山の質問が掲載されています

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openFrameworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openFrameworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openFrameworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/C++fqa/
[15]: http://www.cppreference.com/wiki/
