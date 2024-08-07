SELECT 
    blockchain, 
    trim(lower(address)) as address, 
    name,
    'nft' as category,
    'cryptuschrist' as contributor,
    'static' as source,
    timestamp('2023-06-05') as created_at,
    NOW() as updated_at, 
    'opensea_usernames' as model_name, 
    'identifier' as label_type
FROM
(
  SELECT blockchain, address, name
  FROM {{ ref('labels_nft_opensea_usernames_seed') }}

  ) a 