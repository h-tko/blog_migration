
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
INSERT INTO categories (name, sort) values ('Go,Golang', 1),
('Elixir', 2),
('PHP', 3),
('Java', 4),
('python', 5),
('javascript,js', 6),
('Docker', 7),
('Linux', 8),
('CI,ContinuousIntegration', 995),
('テスト', 996),
('書籍', 997),
('プロジェクト運営', 998),
('その他', 999);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
TRUNCATE TABLE categories;
