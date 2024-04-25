/// draw_pie(x, y, value, max, colour, radius, transparency)

var start_angle = 90; // Starting angle for the pie chart (90 degrees is the top)
var end_angle = 90 + slice * 120; // Calculate the end angle based on the current slice

// Calculate the progress based on the current slice
var progress_start = (slice - 1) / 3;
var progress_end = slice / 3;
var progress_fill = lerp(progress_start, progress_end, progress);

if (progress_fill > 0) {
    var i, len, tx, ty, val;
    var numberofsections = 60; // Number of sections for the pie chart
    var sizeofsection = 360 / numberofsections;

    val = progress_fill * numberofsections;

    if (val > 1) {
        // Interpolating between c_lime (green) and c_red (red) based on progress
        var r = lerp(0, 255, progress_fill);
        var g = lerp(255, 0, progress_fill);
        var b = 0;

        draw_set_color(make_color_rgb(r, g, b));
        draw_set_alpha(1);

        draw_primitive_begin(pr_trianglefan);
        draw_vertex(x, y); // Center of the pie chart

        for (i = 0; i <= val; i++) {
            len = (i * sizeofsection) + start_angle;
            if (len <= end_angle) {
                tx = lengthdir_x(radius, len);
                ty = lengthdir_y(radius, len);
                draw_vertex(x + tx, y + ty);
            }
        }

        draw_primitive_end();
    }
}
