// obj_quaver Create event

xi = x;
yi = y;

jitter_amt = 10;
jitter_offset = 10;


randomize();


// Horizontal jitter
dirx = irandom_range(0,1);
dirx = (dirx == 1) ? 1 : -1;

x_jitter = random_range(-jitter_amt, jitter_amt);


// Vertical jitter
diry = irandom_range(0,1);
diry = (diry == 1) ? 1 : -1;

y_jitter = random_range(-jitter_amt, jitter_amt);

