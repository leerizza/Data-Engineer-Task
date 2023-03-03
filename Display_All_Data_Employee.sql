SELECT
    e.EmployeeId,
    e.FullName,
    e.BirthDate,
    e.Address,
    ph.PosId,
    ph.PosTitle,
    ph.EmployeeId,
    ph.StartDate,
    ph.EndDate
FROM
    employee e
    JOIN (
        SELECT
            EmployeeId,
            PosId,
            PosTitle,
            StartDate,
            EndDate,
            ROW_NUMBER() OVER (
                PARTITION BY EmployeeId
                ORDER BY StartDate DESC
            ) AS rn
        FROM
            PositionHistory
        WHERE
            EndDate IS NULL
    ) ph ON e.EmployeeId = ph.EmployeeId AND ph.rn = 1;