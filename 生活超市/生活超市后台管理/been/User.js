function User(id,nowprice,preprice) {

    this.id=id;
    this.nowprice=nowprice;
    this.preprice=preprice;

    this.setId=function (Id) {
        this.id=Id;
    }
    this.getId=function ( ) {
        return this.id;
    }

    this.setNowprice=function(nowprice) {
        this.nowprice=nowprice;
    }
    this.getNowprice=function(){
        return this.nowprice;
    }

    this.setPreprice=function(preprice) {
        this.preprice=preprice;
    }
    this.getPreprice=function(){
        return this.preprice;
    }
}

module.exports=User