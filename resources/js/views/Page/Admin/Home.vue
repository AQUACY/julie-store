<template>
    
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <h4 class="page-title m-0">Dashboard</h4>
                        </div>
                        <div class="col-md-4">
                            <div class="float-right d-none d-md-block">
                                <div class="dropdown">
                                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="ti-settings mr-1"></i> Settings
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Separated link</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end page-title-box -->
            </div>
        </div> 
        <!-- end page title -->

        <div class="row">
            <div class="col-xl-3 col-md-6">
                <div class="card bg-primary mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">Orders</h6>
                            <h4 class="mb-3 mt-0 float-right">{{ numberFormat(data.transaksi_bulan_ini) }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-info"> {{data.peningkatan_transaksi}} </span> <span class="ml-2">From Last Month</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-cube-outline h5"></i></a>
                        </div>
                        <p class="font-14 m-0">Last Month : {{ data.transaksi_bulan_lalu }}</p>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-info mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">Income</h6>
                            <h4 class="mb-3 mt-0 float-right">Gh₵ {{ numberFormat(data.pendapatan_bulan_ini) }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-danger"> {{data.peningkatan_pendapatan}} </span> <span class="ml-2">From Last Month</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-buffer h5"></i></a>
                        </div>
                        <p class="font-14 m-0">Last month : Gh₵ {{numberFormat(data.pendapatan_bulan_lalu)}}</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card bg-pink mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">AVERAGE PRICE</h6>
                            <h4 class="mb-3 mt-0 float-right">Gh₵ {{ numberFormat(data.average_price) }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-primary"> 0% </span> <span class="ml-2">From previous period</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-tag-text-outline h5"></i></a>
                        </div>
                        <p class="font-14 m-0">Last : 15.8</p>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-success mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">Product Sold</h6>
                            <h4 class="mb-3 mt-0 float-right">{{ data.product_sold }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-info"> +89% </span> <span class="ml-2">From previous period</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-briefcase-check h5"></i></a>
                        </div>
                        <p class="font-14 m-0">Last Month : {{ data.product_sold_lastmo }}</p>
                    </div>
                </div>
            </div>

            <!-- money invested by bought price -->
            <div class="col-xl-3 col-md-6">
                <div class="card bg-success mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">PRODUCTS AVAILABLE IN MONEY (SELLING PRICE)</h6>
                            <h4 class="mb-3 mt-0 float-right">Gh₵ {{ formatPrice(totalMoneyselling) }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-info"> +89% </span> <span class="ml-2">From previous period</span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-briefcase-check h5"></i></a>
                        </div>
                        <p class="font-14 m-0">Last Month : {{ data.product_sold_lastmo }}</p>
                    </div>
                </div>
            </div>
<!-- profit by BOUGHT price -->
            <div class="col-xl-3 col-md-6">
                <div class="card bg-success mini-stat text-white">
                    <div class="p-3 mini-stat-desc">
                        <div class="clearfix">
                            <h6 class="text-uppercase mt-0 float-left text-white-50">PRODUCTS AVAILABLE IN MONEY (BOUGHT PRICE)</h6>
                            <h4 class="mb-3 mt-0 float-right">Gh₵ {{ formatPrice(totalMoneybought) }}</h4>
                        </div>
                        <div>
                            <span class="badge badge-light text-info"></span> <span class="ml-2"></span>
                        </div>
                    </div>
                    <div class="p-3">
                        <div class="float-right">
                            <a href="#" class="text-white-50"><i class="mdi mdi-briefcase-check h5"></i></a>
                        </div>
                        <!-- <p class="font-14 m-0">Last Month : {{ data.product_sold_lastmo }}</p> -->
                    </div>
                </div>
            </div>

            <!-- this is the begining of the product checking table -->

        </div>  

        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <h4 class="page-title m-0 text-red">Products that need re-stocking - go to products page to restock</h4>
                        </div>
                        <div class="col-md-4">
                            <div class="float-right d-none d-md-block">
                                <div class="dropdown">
                                    <!-- <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="ti-settings mr-1"></i> Settings
                                    </button> -->
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated">
                                        <!-- <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Separated link</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end page-title-box -->
            </div>
        </div> 
        <div class="row">
        <div class="table-responsive">
                <h3></h3>
                            <table class="table table-hover table-lg" id='category-table'>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Code</th>
                                        <th>Name</th>
                                        <th>Stock</th>
                                        <th>Restock Balance</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody class="color=red">
                                    <tr v-for="product in products" :key="product.id" v-if="product.restock_bal >= product.stock">
                                    <td>{{ product.id }}</td>
                                    <td><b>{{ product.code }}</b></td>
                                    <td>
                                        <img :src="`/images/products/${product.image_name}`" alt="Product_Picture" class='image-table'>
                                        <span>{{ product.name }}</span>
                                    </td>
                                    <td>{{ product.stock }}</td>
                                    <td>{{ product.restock_bal }}</td>
                                    <td>Gh₵ {{ product.price }}</td>
                                    </tr>
                                </tbody>
                                <!-- <tbody>
                                    <tr v-for="product in products" :key="product.id" v-if="product.restock_bal === 5">
                                        <td>{{ product.id }}</td>
                                        <td><b>{{ product.code }}</b></td>

                                        <td>
                                            <img :src="`/images/products/${product.image_name}`" alt="Product_Picture" class='image-table'>
                                            <span>{{ product.name }}</span>
                                        </td>
                                        
                                        <td>{{ product.stock }}</td>
                                        <td>Gh₵ {{ product.price }}</td>
                                    </tr>
                                </tbody> -->
                            </table>
                        </div>
                        <nav aria-label="Page navigation example" class="float-right">
                                <ul class="pagination">
                                    <li class="page-item"><button class="page-link" href="#" v-if="this.current_page !== this.first_page" @click="prevPage">Previous</button></li>
                                    <li class="page-item"><button class="page-link" href="#">{{ this.current_page }}</button></li>
                                    <li class="page-item"><button class="page-link" href="#" @click="nextPage" v-if="this.current_page !== this.last_page">Next</button></li>
                                </ul>
                            </nav>
                            </div>
        
        <!-- end row -->

        <!-- end row -->

        <!-- end row -->

    </div><!-- container fluid -->
</template>
<script>
export default {
    mounted() {
        // console.log("INI HOME ADMINz");
        this.displayData();
        this.displayDatas(this.page, this.search);
        this.getCategories();
        // this.getallProducts();
        console.log(this.categories);
        this.fetchProducts();
    },
    

    data() {
        return {
            data: [],
            products: [],
            categories: [],
            errors: [],
            search: '',
            page: 1,
            first_page: 1,
            last_page: null,
            current_page: this.$route.query.page || 1, 
            next_page_url: '',
            prev_page_url: '',
            allproducts: [],
            totalMoneybought: 0,
            totalMoneyselling: 0, 
        }
    },

    methods: {
        displayData() {
            axios.get('/api/v1/admin/home')
                .then(res => {
                    this.data = res.data;
                    console.log(this.data);
                })
        },
        fetchProducts(){
            axios.get('/api/v1/product')
        .then(response => {
          this.allproducts = response.data.data;
          console.log('this is where all products data are stored',this.allproducts)
          this.calculateTotalMoney();
        })
        .catch(error => {
          console.error('Error fetching products:', error);
        });
        },
        calculateTotalMoney(){
             // Calculate the total money based on stock and selling price
                this.totalMoneybought = this.allproducts.reduce((total, allproduct) => {
                    return total + (allproduct.stock * allproduct.buy_price);
                }, 0);

                this.totalMoneyselling = this.allproducts.reduce((total, allproduct) => {
                    return total + (allproduct.stock * allproduct.price);
                }, 0);
                // console.log('this is the total money',this.totalMoney)
        },
        displayDatas(page = this.page, search= this.search) {
            axios.get('/api/v1/product', { params: { search: search, page: page } })
                .then(result => {
                    console.log(result.data);
                    this.products = result.data.data;
                    this.last_page = result.data.meta.last_page;
                    this.current_page = result.data.meta.current_page;
                    this.next_page_url = result.data.links.next;
                    this.prev_page_url = result.data.links.prev;
                });
        },
        getCategories() {
            axios.get(`/api/v1/category`)
                .then(res => {
                    this.categories = res.data.data;
                })
                .catch(err => {
                    this.errors = err.response.data;
                })
        },
        nextPage() {
            let nextPage = this.current_page+1;
            window.history.replaceState(null, null, "?page="+nextPage);
            this.displayDatas(this.current_page+1, this.search);
        },

        prevPage() {
            let prevPage = this.current_page-1;
            window.history.replaceState(null, null, "?page="+prevPage);
            this.displayDatas(prevPage, this.search);
        },
        searchData() {
            this.displayData(1, this.search);
            window.history.replaceState(null, null, "?page=1");
        },
        formatPrice(value) {
      // Function to format the price for display
      let val = (value / 1).toFixed(2).replace(',', ',');
      return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    },

    }
}
</script>
