


void construct_cnn(){

	network sequential> net;

	net << conv() << relu() << max_pool() << dropout(0.2) << brnn() << dropout(0.5)) << flatten() << fc() << relu() << fc() << sigmoid();

	assert(net.in_data_size() == 4 * 1000);
	assert(net.out_data_size() == 919);

	//load DNA data
	std::vector<label_t> train_labels;
	std::vector<vec_t> train_data;



	//optimizer
	rmsprop optimizer


	//train(60-epoch, 100-minibatch)
	net.train<mse, rmsprop>(optimizer, train_data, train_labels, 100, 60) 

	//save
	net.save("net");


