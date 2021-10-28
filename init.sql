DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tweets;
DROP TABLE IF EXISTS favorites;
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nickname VARCHAR(20) NOT NULL UNIQUE,
    display_name VARCHAR(20) NOT NULL
);
INSERT INTO users (id, nickname, display_name)
VALUES
(1, 'yt8492', 'マヤミト'),
(2, 'uzimaru0000', 'うじまる'),
(3, 'flying_hato_bus', '飛ばすはとバス');

CREATE TABLE tweets(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    content VARCHAR(140) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
INSERT INTO tweets ( user_id, content )
VALUES
(1, 'おなかいて'),
(1, '髪切って神木隆之介になった'),
(1, 'Kotlin/JS書きたい(発作)'),
(2, 'ティム・クック〜〜俺だ〜〜MacBook Proをくれ〜〜〜'),
(2, '漫画読んでたら2時なんだけど？？'),
(2, '気がついたら寝てた'),
(3, 'アウトドア派の太った瀬戸康史です…どうも…'),
(3, 'このままじゃ寒すぎてサムポーターズブリッジになっちゃう'),
(3, '飲んじゃお！w');
CREATE TABLE favorites(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    tweet_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (tweet_id) REFERENCES tweets(id)
);