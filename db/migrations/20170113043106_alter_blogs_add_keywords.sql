
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE blogs ADD keywords text;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE blogs DROP keywords;
