fun main () =
	let
        val storage = [];
        val context = Context 1337 10217 storage;
        val init_params = [ SCInt 1337, SCString "aviacompany", SCInt 1338, SCString "fuelcompany", SCString "This very simple agreement", SCInt 1339 ];
        val result = Runtime.call 1 context init_params;
    in
        if Option.isNone (get_err result) then
            print(campaign_toPrettyString ((Option.valOf( scValue_to_campaign( decodeValue(Option.valOf(get ( result ))))))))
	else
            print(Option.valOf(get_err ( result )))

    end;

fun negotiation () = 
    let
        val storage = [];

    in
        print("This is will be negotiation part\n")
    end;


fun add_and_apply_price () =
    let
        val storage = [];

    in
        print("This is will be add and apply price part\n")
    end;


fun add_and_apply_fuel_task () =
    let
        val storage = [];

    in
        print("This is will be add and apply fuel task part\n")
    end;


fun refuel () =
    let
        val storage = [];

    in
        print("This is will be refuel part\n")
    end;


main ();
negotiation ();
add_and_apply_price ();
add_and_apply_fuel_task ();
refuel ();