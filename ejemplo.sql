use clase_semana_8;
select
	c.nombre NombreCliente,
    c.correo Correo,
    c.celular Celular,
    f.numero_factura NumeroFactura,
    f.fecha Fecha,
    f.nit Nit,
    f.nombre_empresa Empresa,
    p.codigo CodigoProducto,
    p.nombre Producto,
    p.valor_unitario Precio,
    df.cantidad Cantidad,
    df.sub_total Subtotal,
    (
		select 
			sum(sub_df.sub_total) 
		from 
			detalle_factura  sub_df
		where sub_df.factura_id = 'F-1004'
    ) Total 
    -- f.total ValorTotal        
from 
	cliente c
    inner join factura f ON c.id = f.cliente_id
    inner join detalle_factura df on f.numero_factura = df.factura_id
    inner join producto p on df.producto_id  = p.codigo
where f.numero_factura = 'F-1004';