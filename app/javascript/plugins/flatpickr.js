import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr(".datepicker", {
//   mode: "range",
//   altInput: true,
// })

flatpickr("#trip_start_date", {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  minDate: "today",
  maxDate: new Date().fp_incr(180),
  plugins: [new rangePlugin({ input: "#trip_end_date"})]
})
