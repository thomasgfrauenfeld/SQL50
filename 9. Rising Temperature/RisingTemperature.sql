SELECT w.id as Id FROM Weather as w WHERE EXISTS (SELECT 1 FROM Weather WHERE recordDate = w.recordDate - 1 AND temperature < w.temperature);