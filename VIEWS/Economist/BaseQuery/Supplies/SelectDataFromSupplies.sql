SELECT providers.provider_name, details.detail_name, projects.project_name, supplies.supplies_quantity
FROM supplies 
INNER JOIN providers ON providers.id_provider = supplies.id_provider
INNER JOIN details ON details.id_detail = supplies.id_detail
INNER JOIN projects ON projects.id_project = supplies.id_project
