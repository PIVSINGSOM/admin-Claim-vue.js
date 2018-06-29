var app = new Vue({
  el:"#app1",
  data: {
    edit:false,
    info_shop: [],
    model_in_shop:[],
    Model_ID:'',
    shopID:'',
    search:'',
    NameShop:'',
    AddrShop:'',
    checkStatus:'Cancel',
    Username:'Myname',
    Password:'123456',
    AddName:'',
    Addplace:'',
    ShopId:'',
    delShopID:''
  },// end data
  mounted: function() {
    console.log('mounted');
    this.getAllItem();

  },// end mounted
  methods: {

  
    getAllItem: function() {
      axios.post("http://localhost/admin/api/GET-ALL.php").then(function(response) {
        app.info_shop = response.data.info_shop;
      }).catch(function(responseError) {
        this.status = 'fail'
        alert('fail')
      })
    },
    getModelItem: function(info) {
      axios.get(`http://localhost/admin/api/GET-SHOP-MODEL.php?id=${info.ShopID}`).then(function(response) {
        app.model_in_shop = response.data.modelishere;
        console.log(app.model_in_shop);

      }).catch(function(responseError) {
        this.status = 'fail'
        alert('fail')
        console.log(responseError);
      })
    },
    searchTable: function(search) {
      axios.get(`http://localhost/admin/api/GET-SEARCH.php?text=${search}&`).then(function(response) {
        app.info_shop = response.data.resultSearch;
        console.log(app.info_shop);

      }).catch(function(responseError) {
        this.status = 'fail'
        alert('fail')
        console.log(responseError);
      })
    },
    beforeUpdate:function(info){
      this.edit=info
      this.NameShop=info.Name
      this.AddrShop=info.Address
      this.ShopID=info.ShopID
    },
    upDateItem:function(){
      let infoInsert = []
      infoInsert.push({ShopId:this.ShopID,AddName:this.NameShop,Addplace:this.AddrShop})
      axios.post("http://localhost/admin/api/update_shop.php", {infoInsert:infoInsert}) .then(function (response) {
        console.log(response)
        app.getAllItem();
      })
      .catch(function (error) {
        console.log(error);
      });
    },
    CancelUpdate:function(){
        this.edit=null
    },
    removeShop: function(info){
     
      this.delShopID=info.ShopID
      let infoInsert = []
      infoInsert.push({ShopId:this.delShopID})
      console.log(infoInsert);
      axios.post("http://localhost/admin/api/del_shop.php", {infoInsert:infoInsert}) .then(function (response) {
        console.log(response)
        app.getAllItem();
      })
      .catch(function (error) {
        console.log(error);
      });
    },
    AddShop:function(){
      let infoInsert = []
      infoInsert.push({AddName:this.AddName,Addplace:this.Addplace})

      axios.post("http://localhost/admin/api/add_shop.php", {infoInsert:infoInsert}) .then(function (response) {
        console.log(response)
        app.getAllItem();
      })
      .catch(function (error) {
        console.log(error);
      });
    }


  }// end methods
});
