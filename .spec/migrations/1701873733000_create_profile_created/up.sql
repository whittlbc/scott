BEGIN;
    create table public.profile_created (profile_id varchar, nonce varchar, name varchar, metadata json, owner varchar, anchor varchar, contract_name varchar, contract_address varchar, transaction_hash varchar, log_index int4, block_hash varchar, block_number int8, block_timestamp timestamptz, chain_id varchar);
    alter table public.profile_created add constraint pk_5drscabzfthzmi2wtthe9x primary key (transaction_hash, log_index, chain_id);
    create index idx_qcamnxqhvrkegdvywyxslk on public.profile_created (block_number, chain_id);
    create index idx_el1lp71ooseutbxxnkrx5q on public.profile_created (block_timestamp);
COMMIT;