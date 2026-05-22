Invariant: cz-lab-3
Description: "Datetime musí být uveden s přesností alespoň na den"
Severity: #error
Expression: "($this as dateTime).hasValue() implies ($this as dateTime).toString().length() >= 8"
XPath: "not(boolean(effectiveDateTime)) or f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"