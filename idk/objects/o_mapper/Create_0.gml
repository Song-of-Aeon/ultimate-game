selectionzone = 0;
selectedtype = 0;
selecteddata = 0;

//datas = [[variable_struct_get_names(tl)], [array_get_indeces(mp)]];

//datas = [[o_solid, o_trigger]];

types = ["facetile", "box trigger"];

typing = true;


datas[0] = [variable_struct_get_names(tl), ["funny", "unfunny"]];
datas[1] = [array_get_indeces(mp), [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];

selector = [
	array_create(99),
	array_create(99),
]