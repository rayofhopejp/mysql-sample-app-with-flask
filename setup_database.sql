-- データベースの作成
CREATE DATABASE IF NOT EXISTS resident_registry;

-- データベースの選択
USE resident_registry;

-- テーブルの作成
CREATE TABLE IF NOT EXISTS residents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL
);

-- サンプルデータの挿入（オプション）
INSERT INTO residents (name, email, address) VALUES
('山田太郎', 'taro.yamada@example.com', '東京都新宿区新宿1-1-1'),
('佐藤花子', 'hanako.sato@example.com', '大阪府大阪市中央区大手前2-2-2'),
('鈴木一郎', 'ichiro.suzuki@example.com', '愛知県名古屋市中区栄3-3-3');