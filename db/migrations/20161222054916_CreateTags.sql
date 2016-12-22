
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE tags (
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    created_at timestamp(0) NOT NULL DEFAULT NOW(),
    updated_at timestamp(0),
    deleted_at timestamp(0)
);


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE tags;
