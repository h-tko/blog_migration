
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE access_logs (
    id SERIAL PRIMARY KEY NOT NULL,
    ip_address text NOT NULL,
    user_agent text NOT NULL,
    uri text NOT NULL,
    created_at timestamp(0) not null default now(),
    updated_at timestamp(0),
    deleted_at timestamp(0)
);


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE access_logs;
