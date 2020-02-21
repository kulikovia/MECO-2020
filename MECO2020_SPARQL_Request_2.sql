PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX my: <http://127.0.0.1/bg/ont/test1#>
PREFIX : <http://www.metaphacts.com/resource/>
SELECT ?Account_id ?User ?Data_asset_ID
WHERE {
  ?User my:includes_user ?Account_id .
  ?User my:uses_device ?Device_id.  
  ?Device my:is_connected_to_hub "H000001" .
  ?Device my:has_id ?Device_id .
  ?Device my:has_the_device_model "Moto2k" .
  ?Account my:has_id ?Account_id.
  ?User my:watch ?Data_asset_ID .
  ?User my:calls_srv ?Search_req .
  ?Search_res my:uses_data ?Search_req .
  ?Search_res my:includes_data ?Data_asset_ID .
}
