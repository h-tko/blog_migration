
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE categories (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL,
    sort integer NOT NULL,
    created_at timestamp(0) NOT NULL DEFAULT now(),
    updated_at timestamp(0),
    deleted_at timestamp(0)
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE categories;
