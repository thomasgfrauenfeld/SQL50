-- MySQL solution
SELECT
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(ex.student_id) AS attended_exams
FROM
    Students AS st
CROSS JOIN
    Subjects AS su
LEFT JOIN
    Examinations AS ex
ON
    (st.student_id = ex.student_id AND
    su.subject_name = ex.subject_name)
GROUP BY st.student_id, su.subject_name
ORDER BY st.student_id, su.subject_name;

-- PostgreSQL solution
SELECT
    st.student_id,
    st.student_name,
    su.subject_name,
    COUNT(ex.student_id) AS attended_exams
FROM
    Students AS st
CROSS JOIN
    Subjects AS su
LEFT JOIN
    Examinations AS ex
ON
    (st.student_id = ex.student_id AND
    su.subject_name = ex.subject_name)
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, su.subject_name;