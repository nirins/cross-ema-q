t:("DFFFFFI";enlist",") 0:`:daily_MS.csv

tma:select date, close, ma50:mavg[50;close], ma200:mavg[200;close] from t
tema:select date, close, ema50:ema[2%1+50;close], ema200:ema[2%1+200;close] from t

.qp.go[1200;600]
    .qp.title["Morgan Stanley, NYSE: MS - Simple Moving Average"]
    .qp.stack (               
        .qp.line[tma; `date; `close]
            .qp.s.geom[``fill`size!(::;`black;1)]
            , .qp.s.legend["legend"; `close`ema50`ema200!(`black;`red;`blue)];      
        .qp.line[tma; `date; `ma50]
            .qp.s.geom[``fill`size!(::;`red;1)];
        .qp.line[tma; `date; `ma200]
            .qp.s.geom[``fill`size!(::;`blue;1)])

.qp.go[1200;600]
    .qp.title["Morgan Stanley, NYSE: MS - Exponential Moving Average"]
    .qp.stack (               
        .qp.line[tema; `date; `close]
            .qp.s.geom[``fill`size!(::;`black;1)]
            , .qp.s.legend["legend"; `close`ema50`ema200!(`black;`red;`blue)];    
        .qp.line[tema; `date; `ema50]
            .qp.s.geom[``fill`size!(::;`red;1)];
        .qp.line[tema; `date; `ema200]
            .qp.s.geom[``fill`size!(::;`blue;1)])
