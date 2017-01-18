
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
INSERT INTO categories (name, sort) values ('css,stylesheet', 9);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DELETE FROM categories WHERE name = 'css,stylesheet';
