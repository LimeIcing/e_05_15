SELECT COUNT(DISTINCT guestName) FROM Guest
JOIN Booking ON Guest.guestNo = Booking.guestNo
WHERE Booking.dateFrom LIKE '%-08-%' OR Booking.dateTo LIKE '%-08-%'