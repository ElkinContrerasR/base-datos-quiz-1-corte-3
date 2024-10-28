# Ejercicio 1
### Consulta
    SELECT 
    r.name AS rol_nombre,
    m.name AS modulo_nombre,
    v.name AS vista_nombre
    FROM 
        user u
    INNER JOIN 
        user_role ur ON u.id = ur.user_id
    INNER JOIN 
        role r ON ur.role_id = r.id
    INNER JOIN 
        role_module rm ON r.id = rm.role_id
    INNER JOIN 
        module m ON rm.module_id = m.id
    INNER JOIN 
        module_view mv ON m.id = mv.module_id
    INNER JOIN 
        view v ON mv.view_id = v.id
    WHERE 
        u.username = 'lindaparks' AND 
        u.password = 'password4';



![Consulta completa](img/caso3.png)