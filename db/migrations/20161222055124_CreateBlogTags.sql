
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE blog_tags (
    id SERIAL NOT NULL PRIMARY KEY,
    blog_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    created_at timestamp(0) NOT NULL DEFAULT NOW(),
    updated_at timestamp(0),
    deleted_at timestamp(0)
);
CREATE INDEX blog_tags_blog_id_idx ON blog_tags USING BTREE(blog_id);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE blog_tags;
