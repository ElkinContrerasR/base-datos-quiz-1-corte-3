
SELECT 
	p.first_name AS person,
    u.username AS user,
    r.name AS role,
    m.name AS modulo_nombre,
    v.name AS vista_nombre
    
    
FROM
    person p
INNER JOIN user u ON p.id = u.person_id
INNER  JOIN user_role ur ON u.id = ur.user_id
INNER JOIN role r ON ur.role_id = r.id
INNER JOIN role_module rm ON r.id = rm.role_id
INNER JOIN module m ON rm.module_id = m.id
INNER JOIN  module_view mv ON m.id = mv.module_id
INNER JOIN view v ON mv.view_id = v.id

WHERE
u.username = 'lucasmiller' and u.password = 'contraseña19'