CREATE OR REPLACE FUNCTION addProduct(
	_amount INTEGER,
	_prod_name VARCHAR,
	_seller_id INTEGER,
	_upc INTEGER
) RETURNS VARCHAR AS $$
	BEGIN
		INSERT INTO product(
		amount,
		prod_name,
		seller_id,
		upc
		) VALUES (
		_amount,
		_prod_name,
		_seller_id,
		_upc
		);
		RETURN prod_name;
	END
$$ LANGUAGE plpgsql;	

CREATE OR REPLACE PROCEDURE updateCustomerAddress(
	_address VARCHAR,
	_customer_id INTEGER
	) LANGUAGE plpgsql AS $$
	BEGIN
		UPDATE customer
		SET address = _address
		WHERE customer_id = _customer_id;
		COMMIT;
	END
$$;