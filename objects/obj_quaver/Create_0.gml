// obj_quaver Create event

xi = x;
yi = y;

jitter_amt = 10;
jitter_offset = 10;

// To be set by obj_lock_manager
// Each quaver will correspond to a button's sound in the sequence
quaver_num = -1;
quaver_color = c_dkgray;
image_blend = quaver_color;


randomize();


// Horizontal jitter
dirx = irandom_range(0,1);
dirx = (dirx == 1) ? 1 : -1;

x_jitter = random_range(-jitter_amt, jitter_amt);


// Vertical jitter
diry = irandom_range(0,1);
diry = (diry == 1) ? 1 : -1;

y_jitter = random_range(-jitter_amt, jitter_amt);

