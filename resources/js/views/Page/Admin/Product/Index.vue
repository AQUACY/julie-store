<template>
    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <h4 class="page-title m-0">Product</h4>
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
            <div class="col-xl-12">
                <div class="card m-b-30">
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col-8">
                                <h4 class="mt-0 header-title">PRODUCT LIST</h4>
                            </div>
                            
                            <div class="col-4">

                                <div class="float-right d-none d-md-block">
                                    <div class="dropdown">
                                        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modalAdd">
                                            <i class="ti-plus mr-1"></i> Add
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="offset-md-8 col-md-4 col-sm-12">
                                <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-search"></i></span>
                                </div>
                                    <input type="text" class="form-control" placeholder="Search Category Name" aria-label="Search Category Name" aria-describedby="basic-addon1" v-model="search" @keyup="searchData">
                                </div>
                            </div>
                        </div>
                            <div class="tab-container">
      <div
        v-for="(tab, index) in tabs"
        :key="index"
        @click="changeTab(index)"
        :class="{ 'active-tab': activeTab === index }"
        class="tab"
      >
        {{ tab.name }}
      </div>
    </div>

    <div class="tab-content">
      <div v-if="activeTab === 0">
                            <div class="table-responsive">
                            <table class="table table-hover table-lg" id='category-table'>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Code</th>
                                        <th>Name</th>
                                        <th>Stock</th>
                                        <th>Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody v-for="product in products" v-bind:key='product.id'>
                                    <tr v-if="product.restock_bal >= product.stock" style="background-color:#DF4D40">
                                        <td>{{ product.id }}</td>
                                        <td><b>{{ product.code }}</b></td>

                                        <td>
                                            <img :src="`/images/products/${product.image_name}`" alt="Product_Picture" class='image-table'>
                                            <span>{{ product.name }}</span>
                                        </td>
                                        
                                        <td>{{ product.stock }}</td>
                                        <td>Gh₵ {{ formatPrice(product.price) }}</td>
                                        <td>
                                            <button type="button" class='btn btn-warning' @click="editProduct(product.id)">Add More Stock</button>
                                            <button type="button" @click="deleteProduct(product.id)" class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>

                                    <tr v-else>
                                        <td>{{ product.id }}</td>
                                        <td><b>{{ product.code }}</b></td>

                                        <td>
                                            <img :src="`/images/products/${product.image_name}`" alt="Product_Picture" class='image-table'>
                                            <span>{{ product.name }}</span>
                                        </td>
                                        
                                        <td>{{ product.stock }}</td>
                                        <td>Gh₵ {{ formatPrice(product.price) }}</td>
                                        <td>
                                            <button type="button" class='btn btn-warning' @click="editProduct(product.id)">Edit</button>
                                            <button type="button" @click="deleteProduct(product.id)" class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
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
    <!-- tab for low stock -->
      <div v-if="activeTab === 1">
        <div class="table-responsive">
                            <table class="table table-hover table-lg" id='category-table'>
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Code</th>
                                        <th>Name</th>
                                        <th>Stock</th>
                                        <th>Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="product in products" v-bind:key='product.id' v-if="product.restock_bal >= product.stock">
                                        <td>{{ product.id }}</td>
                                        <td><b>{{ product.code }}</b></td>

                                        <td>
                                            <img :src="`/images/products/${product.image_name}`" alt="Product_Picture" class='image-table'>
                                            <span>{{ product.name }}</span>
                                        </td>
                                        
                                        <td>{{ product.stock }}</td>
                                        <td>Gh₵ {{ formatPrice(product.price) }}</td>
                                        <td>
                                            <button type="button" class='btn btn-warning' @click="editProduct(product.id)">Add More Stock</button>
                                            <button type="button" @click="deleteProduct(product.id)" class="btn btn-danger">Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
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
    </div>
                       
                        
                    </div>
                </div>
            </div>

        </div>
        <!-- Add Modal -->
        <div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Tutup">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method='POST' enctype="multipart/form-data" @submit.prevent="addProduct">
                        
                        <div class="modal-body">
                                <div class="alert alert-danger" v-if="errors != ''" >
                                    <ul>
                                        <li v-for="error in errors" v-bind:key="error.id">{{ error[0] }}</li>
                                    </ul>
                                </div>
                                <div class="form-group">
                                    <label for="name">Name of Product</label>
                                    <input id="name" type="text"
                                        class="form-control" name="name" autofocus
                                        placeholder="Name of Product" v-model='add.name'>
                                </div>
                                <div class="form-group">
                                    <label for="code">Code of Product</label>
                                    <input id="code" type="text"
                                        class="form-control" name="code" autofocus
                                        placeholder="Use the scanner to add code" v-model='add.code'>
                                
                                </div>
                                <div class="form-group">
                                    <label for="last_name">Category</label>
                                    <select name="category" id="" class='form-control' v-model='add.category'>
                                        <option value="">Select One..</option>
                                        <option :value="category.id" v-for="category  in this.categories" :key="category.id">{{ category.name }}</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Description</label>
                                    <textarea name="description" id="" cols="30" rows="5" class="form-control" v-model="add.description"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="email">Stock</label>
                                    <input id="stock" type="number" class="form-control"
                                        name="stock" placeholder="Stock Balance" v-model="add.stock">
                             
                                </div>
                                <div class="form-group">
                                    <label for="email">Restock Level</label>
                                    <input id="stock" type="number" class="form-control"
                                        name="stock" placeholder="Balance threshold for restocking" v-model="add.restock_bal">
                             
                                </div>
                                <div class="form-group">
                                    <label for="email">Bought Price</label>
                                    <input id="price" type="number" class="form-control"
                                        name="price" placeholder="Bought Price" v-model="add.buy_price" >
                                </div>
                                <div class="form-group">
                                    <label for="email">Selling Price</label>
                                    <input id="price" type="number" class="form-control"
                                        name="price" placeholder="Selling Price" v-model="add.price" >
                                </div>
                                <div class="form-group">
                                    <label for="email">VAT</label>
                                    <input id="ppn" type="number" class="form-control"
                                        name="ppn" placeholder="VAT (%)" v-model="add.ppn" >
                                </div>
                                <div class="form-group">
                                    <label for="">Picture</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                                        </div>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" name='file' id="inputGroupFile01" @change="onChangePhotoUpload" aria-describedby="inputGroupFileAddon01" multiple accept='image/*'>
                                            <label class="custom-file-label" for="inputGroupFile01">Browse</label>
                                        </div> 
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal -->
        <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Tutup">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method='POST' enctype="multipart/form-data" @submit.prevent="updateProduct(edit.id)">
                        
                        <div class="modal-body">
                            <div class="alert alert-danger" v-if="errors != ''" >
                                <ul>
                                    <li v-for="error in errors" v-bind:key="error.id">{{ error[0] }}</li>
                                </ul>
                            </div>
                            <div class="form-group">
                                <label for="name">Name of Product</label>
                                <input id="name" type="text"
                                    class="form-control" name="name" autofocus
                                    placeholder="Nama produk" v-model='edit.name'>
                            </div>
                            <div class="form-group">
                                <label for="code">Code of Product</label>
                                <input id="code" type="text"
                                    class="form-control" name="code" autofocus
                                    placeholder="Use scanner to add code" v-model='edit.code'>
                            
                            </div>
                            <div class="form-group">
                                <label for="last_name">Category</label>
                                <select name="category" id="" class='form-control' v-model='edit.category'>
                                    <option value="">Select One..</option>
                                    <option :value="category.id" v-for="category  in this.categories" :key="category.id">{{ category.name }}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Description</label>
                                <textarea name="description" id="" cols="30" rows="5" class="form-control" v-model="edit.description"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="email">Stock</label>
                                <input id="stock" type="number" class="form-control"
                                    name="stock" placeholder="Stock balance" v-model="edit.stock">
                            
                            </div>
                            <div class="form-group">
                                <label for="email">Restock Level</label>
                                <input id="stock" type="number" class="form-control"
                                    name="stock" placeholder="Balance threshold for restocking" v-model="edit.restock_bal">
                            
                            </div>
                            <div class="form-group">
                                    <label for="email">Bought Price</label>
                                    <input id="price" type="number" class="form-control"
                                        name="price" placeholder="Bought Price" v-model="edit.buy_price" >
                            </div>
                            <div class="form-group">
                                <label for="email">Selling Price</label>
                                <input id="price" type="number" class="form-control"
                                    name="price" placeholder="Price" v-model="edit.price" >
                            </div>
                            <div class="form-group">
                                <label for="email">VAT</label>
                                <input id="price" type="number" class="form-control"
                                    name="ppn" placeholder="VAT" v-model="edit.ppn" >
                            </div>
                            <div class="form-group">
                                <label for="">Picture</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                                    </div>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" name='file' id="inputGroupFile01" @change="onChangePhotoEdit" aria-describedby="inputGroupFileAddon01" multiple accept='image/*'>
                                        <label class="custom-file-label" for="inputGroupFile01">Browse</label>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- end row -->      
        <div>
  </div>      

    </div><!-- container fluid -->

</template>
<script>
import Swal from 'sweetalert2'

export default {
    mounted() {
        this.displayData(this.page, this.search);
        this.getCategories();
        console.log(this.categories);
    },

    data() {
        return {
            edit: {
                id: '',
                name: '',
                category: '',
                code: '',
                price: '',
                description: '',
                image_name: '',
                photo: '',
                ppn:'',
                buy_price:'',
                restock_bal:'',
            },
            add: {
                name: '',
                description: '',
                price: '',
                stock: '',
                category: '',
                photo: '',
                image_name: '',
                ppn:'',
                buy_price:'',
                restock_bal:'',
            },
            tabs: [
                { name: "All Products" },
                { name: "Low Stock Products" }
            ],
      activeTab: 0,
            description: '',
            search: '',
            products: [],
            categories: [],
            errors: [],
            
            page: 1,
            first_page: 1,
            last_page: null,
            current_page: this.$route.query.page || 1, 
            next_page_url: '',
            prev_page_url: '',
        }
    },
    computed: {
      lowStockProducts() {
        return this.products.filter(product => product.restock_bal >= product.stock);
      },
    },
    methods: {  
        displayData(page = this.page, search= this.search) {
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

        addProduct() {
            let name = this.add.name;
            let description = this.add.description;
            let code = this.add.code;
            let category = this.add.category;
            let price = this.add.price;
            let ppn = this.add.ppn;
            let stock = this.add.stock;
            let photo = this.add.photo;
            let buy_price = this.add.buy_price;
            let restock_bal = this.add.restock_bal;

            let formData = new FormData();
            formData.append('name', name);
            formData.append('description', description);
            formData.append('code', code);
            formData.append('category', category);
            formData.append('price', price);
            formData.append('ppn', ppn);
            formData.append('stock', stock);
            formData.append('photo', photo);
            formData.append('buy_price', buy_price);
            formData.append('restock_bal', restock_bal);


            axios.post('/api/v1/product', formData, { headers: { 'Content-Type': 'multipart/form-data' } })
                .then(res => {
                    console.log(res);
                    this.displayData();
                    $('#modalAdd').modal('toggle');
                    Swal.fire(
                        `Success!`,
                        `Successfully added products ${this.add.name}!`,
                        'success'
                    )
                    this.add.name = '';
                    this.add.description = '';
                    this.add.code = '';
                    this.add.category = '';
                    this.add.price = '';
                    this.add.stock = '';
                    this.add.photo = '';
                    this.add.buy_price = '';
                    this.add.restock_bal = '';
                    this.errors = [];

                }).catch(err => {
                    console.log(err.response.data);
                    if(err.response.status == 422) {
                        this.errors = err.response.data.errors;
                    }else if(err.response.status == 500) {
                        this.errors = [['System error']];
                    }
                });
        },

        editProduct(id) {
            let name = this.edit.name;
            let description = this.edit.description;
            let code = this.edit.code;
            let category = this.edit.category;
            let price = this.edit.price;
            let stock = this.edit.stock;
            let photo = this.edit.photo;
            let ppn = this.edit.ppn;
            let buy_price = this.edit.buy_price;
            let restock_bal = this.edit.restock_bal;

            axios.get(`/api/v1/product/${id}/edit`)
                .then(res => {
                    console.log(res.data);
                    
                    this.edit.id = res.data.id;
                    this.edit.name = res.data.name;
                    this.edit.code = res.data.code;
                    this.edit.description = res.data.description;
                    this.edit.category = res.data.category_id;
                    this.edit.price = res.data.price;
                    this.edit.stock = res.data.stock;
                    this.edit.photo = res.data.image_name;
                    this.edit.ppn = res.data.ppn;
                    this.edit.buy_price = res.data.buy_price;
                    this.edit.restock_bal = res.data.restock_bal;

                    $("#modalEdit").modal('toggle');
                }).catch(err => {
                    console.log(err.response);
                })

        },

        updateProduct(id) {
            let name = this.edit.name;
            let description = this.edit.description;
            let code = this.edit.code;
            let category = this.edit.category;
            let price = this.edit.price;
            let stock = this.edit.stock;
            let photo = this.edit.photo;
            let ppn = this.edit.ppn;
            let buy_price = this.edit.buy_price;
            let restock_bal = this.edit.restock_bal;

            let formData = new FormData();
            formData.append('name', name);
            formData.append('description', description);
            formData.append('code', code);
            formData.append('category', category);
            formData.append('price', price);
            formData.append('stock', stock);
            formData.append('photo', photo);
            formData.append('ppn', ppn);
            formData.append('buy_price', buy_price);
            formData.append('restock_bal', restock_bal);


            console.log(id);
            axios.post(`/api/v1/product/${id}`, formData, { headers: { 'Content-Type': 'multipart/form-data' } })
                .then(res => {
                    console.log(res);
                    this.displayData();
                    $('#modalEdit').modal('toggle');
                    Swal.fire(
                        `Success!`,
                        `Successful product editing ${this.edit.name}!`,
                        'success'
                    )
                    this.edit.name = '';
                    this.edit.description = '';
                    this.edit.code = '';
                    this.edit.category = '';
                    this.edit.price = '';
                    this.edit.stock = '';
                    this.edit.photo = '';
                    this.edit.restock_bal = '';
                    this.errors = [];

                }).catch(err => {
                    if(err.response.status == 422) {
                        this.errors = err.response.data.errors;
                    }else if(err.response.status == 500) {
                        this.errors = [['System error']];
                    }
                });
        },

        getCategories() {
            const perPage = 20;

            axios.get(`/api/v1/category`, {
                        params: {
                            per_page: perPage,
                        }
                    })
                .then(res => {
                    this.categories = res.data.data;
                    console.log('these are all the categories', this.categories)
                })
                .catch(err => {
                    this.errors = err.response.data;
                })
        },

        deleteProduct(id) {
            alertify.confirm("Are you sure you want to delete?", function (ev) {
                ev.preventDefault();
                // let that = this
                axios.delete(`/api/v1/product/${id}`)
                    .then(res => {
                        console.log(res);
                        this.displayData();
                        alertify.success("Successfully deleted product!");
                    });
                });
        },

        onChangePhotoUpload() {
            this.add.photo = event.target.files[0];
        },

        onChangePhotoEdit() {
            this.edit.photo = event.target.files[0];
            
            $('#edit-category-image').attr('src', URL.createObjectURL(event.target.files[0]));
        },

        nextPage() {
            let nextPage = this.current_page+1;
            window.history.replaceState(null, null, "?page="+nextPage);
            this.displayData(this.current_page+1, this.search);
        },

        prevPage() {
            let prevPage = this.current_page-1;
            window.history.replaceState(null, null, "?page="+prevPage);
            this.displayData(prevPage, this.search);
        },

        searchData() {
            this.displayData(1, this.search);
            window.history.replaceState(null, null, "?page=1");
        },

        formatPrice(value) {
            let val = (value/1).toFixed(0).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        },
        displayLowStockProducts() {
        // Display low stock products
        this.products = this.lowStockProducts;
      },
  
      resetDisplayData() {
        // Reset to display all products
        this.displayData();
      },
      changeTab(index) {
      this.activeTab = index;
    }
        
    }
}
</script>
<style>
    .image-table {
        width: 40px;
        height: 40px;
        object-fit: cover;
        margin-right: 10px;;
    }
    .tab-container {
  display: flex;
}

.tab {
  cursor: pointer;
  padding: 10px;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

.active-tab {
  background-color: #ddd;
}

.tab-content {
  padding: 20px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
}
</style>
