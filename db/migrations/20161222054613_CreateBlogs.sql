
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE blogs (
    id SERIAL PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    is_show BOOLEAN NOT NULL DEFAULT FALSE,
    created_at timestamp(0) NOT NULL DEFAULT NOW(),
    updated_at timestamp(0),
    deleted_at timestamp(0)
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE blogs;
