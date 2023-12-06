BEGIN;
    create table public.voting_contract_created (voting_contract_address varchar, voting_implementation varchar, contract_name varchar, contract_address varchar, transaction_hash varchar, log_index int4, block_hash varchar, block_number int8, block_timestamp timestamptz, chain_id varchar);
    alter table public.voting_contract_created add constraint pk_ic6djr6aj2bz86j2bhbkhr primary key (transaction_hash, log_index, chain_id);
    create index idx_slbbhvpbjumabmngao9lnw on public.voting_contract_created (block_number, chain_id);
    create index idx_ue1cu56w827huegi91ehee on public.voting_contract_created (block_timestamp);
COMMIT;