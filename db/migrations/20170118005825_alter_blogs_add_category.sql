
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE blogs ADD category integer;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE blogs DROP category;
