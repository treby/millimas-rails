Category.create(name: '公式サイト', slug: 'official', description: '公式サイトからの情報', sort_key: 10)
Category.create(name: '声優ブログ', slug: 'actor', description: '声優さんのブログ', sort_key: 1)
Category.create(name: '個人ブログ', slug: 'matome', description: '2chまとめブログからの情報', sort_key: 5)
Category.create(name: 'まとめサイト', slug: 'actor', description: '声優さんのブログ', sort_key: 1)

Feed.create(title: 'アイマス公式', category_id: 1, feed_url: 'http://idolmaster.jp/blog/?feed=rss2')
Feed.create(title: 'ミリオンラジオブロマガ', category_id: 1, feed_url: 'http://ch.nicovideo.jp/MillionRADIO/blomaga/nico/feed')

Feed.create(title: '中村繪里子', category_id: 2, feed_url: 'http://rssblog.ameba.jp/eriko-nakamura-blog/rss20.xml')
Feed.create(title: '今井麻美', category_id: 2, feed_url: 'http://blog.livedoor.jp/ubiquitous777/index.rdf')
Feed.create(title: '浅倉杏美', category_id: 2, feed_url: 'http://rssblog.ameba.jp/asakura-azumi/rss20.xml')
Feed.create(title: '仁後真耶子', category_id: 2, feed_url: 'http://yaplog.jp/maya-rhythm/index1_0.rdf')
Feed.create(title: '若林直美', category_id: 2, feed_url: 'http://wakachoku.way-nifty.com/blog/atom.xml')
Feed.create(title: '高橋智秋', category_id: 2, feed_url: 'http://chiaking.officialblog.jp/atom.xml')
Feed.create(title: '釘宮理恵', category_id: 2, feed_url: 'http://rssblog.ameba.jp/kugimiyarie-blog/rss20.xml')
Feed.create(title: '平田宏美', category_id: 2, feed_url: 'http://blog.livedoor.jp/hira__hiro/atom.xml')
Feed.create(title: '下田麻美', category_id: 2, feed_url: 'http://yaplog.jp/asaponmax/index1_0.rdf')
Feed.create(title: '長谷川明子', category_id: 2, feed_url: 'http://blog.livedoor.jp/onigiriwa315/atom.xml')
Feed.create(title: '沼倉愛美', category_id: 2, feed_url: 'http://blog.livedoor.jp/mnm_n_/atom.xml')
Feed.create(title: '原由実', category_id: 2, feed_url: 'http://yaplog.jp/heavenly_cafe/index1_0.rdf')
Feed.create(title: '田所あずさ', category_id: 2, feed_url: 'http://rssblog.ameba.jp/azusa-tadokoro/rss20.xml')
Feed.create(title: '麻倉もも', category_id: 2, feed_url: 'http://rssblog.ameba.jp/asakuramomoblog/rss20.xml')
Feed.create(title: '雨宮天', category_id: 2, feed_url: 'http://rssblog.ameba.jp/amamiyasorablog/rss20.xml')
Feed.create(title: '夏川椎菜', category_id: 2, feed_url: 'http://rssblog.ameba.jp/amamiyasorablog/rss20.xml')
Feed.create(title: '桐谷蝶々', category_id: 2, feed_url: 'http://rssblog.ameba.jp/mmmm1515/rss20.xml')

Feed.create(title: 'あいうえおPの筆不精を直すためのソレ', category_id: 3, feed_url: 'http://ch.nicovideo.jp/aiueo/blomaga/nico/feed')
Feed.create(title: 'Nicom@s DS Style', category_id: 3, feed_url: 'http://ch.nicovideo.jp/famiellie/blomaga/nico/feed')
Feed.create(title: 'ミツボシ パッて弾けて 流星群', category_id: 3, feed_url: 'http://ch.nicovideo.jp/swordstrike/blomaga/nico/feed')

Feed.create(title: 'みります！', category_id: 4, feed_url: 'http://millimas.net/index.rdf')
Feed.create(title: 'ミリオンライブニュース', category_id: 4, feed_url: 'http://imasmillionlive.blog.fc2.com/?xml')
Feed.create(title: 'ヴァイ', category_id: 4, feed_url: 'http://vaimas.blog.fc2.com/?xml')
Feed.create(title: 'グリマス日和', category_id: 4, feed_url: 'http://greemas.doorblog.jp/atom.xml')
