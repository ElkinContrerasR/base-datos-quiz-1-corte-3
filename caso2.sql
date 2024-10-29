select 
      r.name AS role_name, m.name AS module_name, v.name AS view_name
from   
    role r
inner join  role_module rm ON r.id = rm.role_id
inner join   module m ON rm.module_id = m.id
inner join module_view mv ON m.id = mv.module_id
inner join view v ON mv.view_id = v.id
where 
r.name = 'moderador'