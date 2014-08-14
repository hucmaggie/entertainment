[when] bookingdate is in at least {days:ENUM:days.day} in advance = eval(helper.isBookingAdvanced(bodate,{days}))
[when] is bookingdate on {monthN:ENUM:month.months} = eval( bodate.getMonth() == {monthN} )
[when] accommodation type is {types:ENUM:Accommodation.type} = Accommodation( type == "{types}") 
[when] there is a components that has ony type {name}  exists =  SalesRequest( components : bundle.components) java.util.List( eval( size> 0 )) from collect ( Component( name == {name} ) from components