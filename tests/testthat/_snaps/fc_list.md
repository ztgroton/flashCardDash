# `fc_list` works

    Code
      fc_list(title = "mytitle")
    Output
      <div>
        <h6>mytitle</h6>
        <ul></ul>
      </div>

---

    Code
      (fc_list(title = "mytitle", "a", "b", "c", .hsize = "4", .ltype = "ol"))
    Output
      <div>
        <h4>mytitle</h4>
        <ol>
          <li>a</li>
          <li>b</li>
          <li>c</li>
        </ol>
      </div>

