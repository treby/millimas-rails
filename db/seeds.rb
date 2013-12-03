# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: '公式サイト', slug: 'official', description: '公式サイトからの情報', sort_key: 10)
Category.create(name: 'まとめブログ', slug: 'matome', description: '2chまとめブログからの情報', sort_key: 5)
Category.create(name: '声優ブログ', slug: 'actor', description: '声優さんのブログ', sort_key: 1)

Feed.create(title: 'アイマス公式', category_id: 1, feed_url: 'http://rssblog.ameba.jp/project-imas/rss20.xml')
Feed.create(title: 'みります！', category_id: 2, feed_url: 'http://millimas.net/index.rdf')
Feed.create(title: 'ミリオンライブニュース', category_id: 2, feed_url: 'http://imasmillionlive.blog.fc2.com/?xml')
Feed.create(title: 'ヴァイ', category_id: 2, feed_url: 'http://vaimas.blog.fc2.com/?xml')
Feed.create(title: 'えりこさん', category_id: 3, feed_url: 'http://rssblog.ameba.jp/eriko-nakamura-blog/rss20.xml')
Feed.create(title: 'みんごす', category_id: 3, feed_url: 'http://blog.livedoor.jp/ubiquitous777/index.rdf')
Feed.create(title: 'あずみん', category_id: 3, feed_url: 'http://rssblog.ameba.jp/asakura-azumi/rss20.xml')
Feed.create(title: 'にごさん', category_id: 3, feed_url: 'http://yaplog.jp/maya-rhythm/index1_0.rdf')
Feed.create(title: 'わかばやしさん', category_id: 3, feed_url: 'http://wakachoku.way-nifty.com/blog/atom.xml')
Feed.create(title: 'ちあきんぐ', category_id: 3, feed_url: 'http://chiaking.officialblog.jp/atom.xml')
Feed.create(title: 'くぎみー', category_id: 3, feed_url: 'http://rssblog.ameba.jp/kugimiyarie-blog/rss20.xml')
Feed.create(title: 'ひらたさん', category_id: 3, feed_url: 'http://blog.livedoor.jp/hira__hiro/atom.xml')
Feed.create(title: 'あさぽん', category_id: 3, feed_url: 'http://yaplog.jp/asaponmax/index1_0.rdf')
Feed.create(title: 'あっきー', category_id: 3, feed_url: 'http://blog.livedoor.jp/onigiriwa315/atom.xml')
Feed.create(title: 'ぬーぬー', category_id: 3, feed_url: 'http://blog.livedoor.jp/mnm_n_/atom.xml')
Feed.create(title: 'はらみー', category_id: 3, feed_url: 'http://yaplog.jp/heavenly_cafe/index1_0.rdf')
Feed.create(title: 'じゅりあ', category_id: 3, feed_url: 'http://rssblog.ameba.jp/aimi-sound/rss20.xml')
Feed.create(title: 'ともかさん', category_id: 3, feed_url: 'http://rssblog.ameba.jp/koiwai-kotori/rss20.xml')
Feed.create(title: 'もがみん（ころあず）', category_id: 3, feed_url: 'http://rssblog.ameba.jp/azusa-tadokoro/rss20.xml')

