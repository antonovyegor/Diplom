ADDSUB_inst : ADDSUB PORT MAP (
		aclr	 => aclr_sig,
		add_sub	 => add_sub_sig,
		clock	 => clock_sig,
		dataa	 => dataa_sig,
		datab	 => datab_sig,
		result	 => result_sig,
		zero	 => zero_sig
	);
