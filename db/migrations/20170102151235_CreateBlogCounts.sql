
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE blog_counts (
    blog_id INTEGER NOT NULL PRIMARY KEY,
    good_count INTEGER NOT NULL DEFAULT 0,
    created_at timestamp(0) NOT NULL DEFAULT NOW()
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE blog_counts;
