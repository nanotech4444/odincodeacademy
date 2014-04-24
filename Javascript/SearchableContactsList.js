var friends = {};
friends.bill= new Object();
friends.steve = {
    firstName:"Steve",
    lastName:"Jobs",
    number:"408-555-5555",
    address:['123 Lane St', 'Cupertino', 'CA', '98050']
};

friends.bill={
    firstName:"Bill",
    lastName: "Gates",
    number: "206-555-5555",
    address:['423 Lane St', 'Redmond', 'WA', '98345']
};

var list = function (input) {
    for (var property in input){
        console.log(property);
    }
}

var search = function (name) {
    for(var key in friends) {
        if(name===friends[key].firstName){
            console.log(friends[key]);
            return friends[key];
        }
    }
    
}