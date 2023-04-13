breed [ persons person ]

globals [
  fire-kills
  person-evacuated
]

persons-own [
  behavior
  floor-number
  nearest-exit
  dist1
  dist2
  dist3
  dist4
  speed
]

to setup
  clear-all

  setup-floors
  setup-people
  setup-fire

  set fire-kills 0

  reset-ticks
end

to setup-floors
  ask patches [
    ; VIP
    if pxcor <= 28 and pxcor >= -28 and pycor >= -22 and pycor <= 22
      [ set pcolor sky ]
    if pxcor = 29 or pxcor = -29 or pxcor = 30 or pxcor = -30 and pycor >= -21 and pycor <= 21
      [ set pcolor sky ]
    if pxcor = 31 or pxcor = -31 or pxcor = 32 or pxcor = -32 and pycor >= -20 and pycor <= 20
      [ set pcolor sky ]
    if pxcor = 33 or pxcor = -33 or pxcor = 34 or pxcor = -34 and pycor >= -19 and pycor <= 19
      [ set pcolor sky ]
    if pxcor = 35 or pxcor = -35 or pxcor = 36 or pxcor = -36 and pycor >= -18 and pycor <= 18
      [ set pcolor sky ]
    if pxcor = 37 or pxcor = -37 or pxcor = 38 or pxcor = -38 and pycor >= -17 and pycor <= 17
      [ set pcolor sky ]
    if pxcor = 39 or pxcor = -39 or pxcor = 40 or pxcor = -40 and pycor >= -16 and pycor <= 16
      [ set pcolor sky ]
    if pxcor = 41 or pxcor = -41 and pycor >= -15 and pycor <= 15
      [ set pcolor sky ]

    if abs pxcor >= 33 and abs pxcor <= 36 and abs pycor >= 19 and abs pycor <= 20
      [ set pcolor sky ]

    ; 211, 201, 212, 202
    if abs pxcor >= 43 and abs pxcor <= 49 and abs pycor >= 1 and abs pycor <= 12
      [ set pcolor blue ]

    ; 411, 401, 412, 402
    if abs pxcor >= 53 and abs pxcor <= 62 and abs pycor >= 1 and abs pycor <= 13
      [ set pcolor magenta ]

    ; 511, 501, 512, 502
    if abs pxcor >= 64 and abs pxcor <= 71 and abs pycor >= 1 and abs pycor <= 13
      [ set pcolor pink ]

    ; 206, 217
    if pxcor >= -6 and pxcor <= 6 and abs pycor >= 24 and abs pycor <= 40
      [ set pcolor blue ]

    ; 406, 417
    if pxcor >= -6 and pxcor <= 6 and abs pycor >= 44 and abs pycor <= 54
      [ set pcolor magenta ]

    ; 506, 517
    if pxcor >= -6 and pxcor <= 6 and abs pycor >= 57 and abs pycor <= 62
      [ set pcolor pink ]

    ; 207, 205, 216, 218
    if abs pxcor >= 9 and abs pxcor <= 21 and abs pycor >= 24 and abs pycor <= 40
      [ set pcolor blue ]

    ; 407, 405, 416, 418
    if abs pxcor >= 9 and abs pxcor <= 21 and abs pycor >= 44 and abs pycor <= 54
      [ set pcolor magenta ]

    ; 507, 505, 516, 518
    if abs pxcor >= 9 and abs pxcor <= 21 and abs pycor >= 57 and abs pycor <= 62
      [ set pcolor pink ]

    ; 208, 204, 215, 219
    if abs pxcor >= 24 and abs pxcor <= 27 and abs pycor >= 24 and abs pycor <= 40
      [ set pcolor blue ]
    if abs pxcor = 28 and abs pycor >= 25 and abs pycor <= 40
      [ set pcolor blue ]
    if abs pxcor = 29 and abs pycor >= 26 and abs pycor <= 40
      [ set pcolor blue ]
    if abs pxcor = 30 and abs pycor >= 28 and abs pycor <= 39
      [ set pcolor blue ]
    if abs pxcor = 31 and abs pycor >= 30 and abs pycor <= 39
      [ set pcolor blue ]
    if abs pxcor = 32 and abs pycor >= 32 and abs pycor <= 39
      [ set pcolor blue ]
    if abs pxcor = 33 and abs pycor >= 34 and abs pycor <= 39
      [ set pcolor blue ]
    if abs pxcor = 34 and abs pycor >= 36 and abs pycor <= 39
      [ set pcolor blue ]
    if abs pxcor = 35 and abs pycor >= 38 and abs pycor <= 39
      [ set pcolor blue ]

    ; 209, 203, 204, 220
    if abs pxcor = 30 and abs pycor >= 23 and abs pycor <= 24
      [ set pcolor blue ]
    if abs pxcor = 31 and abs pycor >= 23 and abs pycor <= 26
      [ set pcolor blue ]
    if abs pxcor = 32 and abs pycor >= 22 and abs pycor <= 28
      [ set pcolor blue ]
    if abs pxcor = 33 and abs pycor >= 22 and abs pycor <= 30
      [ set pcolor blue ]
    if abs pxcor = 34 and abs pycor >= 22 and abs pycor <= 32
      [ set pcolor blue ]
    if abs pxcor = 35 and abs pycor >= 22 and abs pycor <= 34
      [ set pcolor blue ]
    if abs pxcor = 36 and abs pycor >= 23 and abs pycor <= 36
      [ set pcolor blue ]
    if abs pxcor = 37 and abs pycor >= 23 and abs pycor <= 37
      [ set pcolor blue ]
    if abs pxcor = 38 and abs pycor >= 24 and abs pycor <= 37
      [ set pcolor blue ]
    if abs pxcor = 39 and abs pycor >= 24 and abs pycor <= 36
      [ set pcolor blue ]
    if abs pxcor = 40 and abs pycor >= 25 and abs pycor <= 35
      [ set pcolor blue ]
    if abs pxcor = 41 and abs pycor >= 25 and abs pycor <= 34
      [ set pcolor blue ]
    if abs pxcor = 42 and abs pycor >= 26 and abs pycor <= 33
      [ set pcolor blue ]
    if abs pxcor = 43 and abs pycor >= 26 and abs pycor <= 32
      [ set pcolor blue ]
    if abs pxcor = 44 and abs pycor >= 27 and abs pycor <= 31
      [ set pcolor blue ]
    if abs pxcor = 45 and abs pycor >= 27 and abs pycor <= 30
      [ set pcolor blue ]
    if abs pxcor = 46 and abs pycor >= 28 and abs pycor <= 29
      [ set pcolor blue ]

    ; 210, 202, 213, 221
    if abs pxcor = 39 and abs pycor >= 19 and abs pycor <= 22
      [ set pcolor blue ]
    if abs pxcor = 40 and abs pycor >= 18 and abs pycor <= 22
      [ set pcolor blue ]
    if abs pxcor = 41 and abs pycor >= 18 and abs pycor <= 23
      [ set pcolor blue ]
    if abs pxcor = 42 and abs pycor >= 17 and abs pycor <= 23
      [ set pcolor blue ]
    if abs pxcor >= 43 and abs pxcor <= 44 and abs pycor >= 14 and abs pycor <= 24
      [ set pcolor blue ]
    if abs pxcor >= 45 and abs pxcor <= 46 and abs pycor >= 14 and abs pycor <= 25
      [ set pcolor blue ]
    if abs pxcor >= 47 and abs pxcor <= 48 and abs pycor >= 14 and abs pycor <= 26
      [ set pcolor blue ]
    if abs pxcor = 49 and abs pycor >= 14 and abs pycor <= 23
      [ set pcolor blue ]


    ; 408, 404, 415, 419
    if abs pxcor >= 24 and abs pxcor <= 29 and abs pycor >= 44 and abs pycor <= 54
      [ set pcolor magenta ]
    if abs pxcor >= 30 and abs pxcor <= 36 and abs pycor >= 43 and abs pycor <= 53
      [ set pcolor magenta ]
    if abs pxcor = 37 and abs pycor >= 45 and abs pycor <= 52
      [ set pcolor magenta ]
    if abs pxcor = 38 and abs pycor >= 47 and abs pycor <= 52
      [ set pcolor magenta ]
    if abs pxcor = 39 and abs pycor >= 49 and abs pycor <= 52
      [ set pcolor magenta ]
    if abs pxcor = 40 and abs pycor >= 51 and abs pycor <= 52
      [ set pcolor magenta ]

    ; 508, 504, 515, 519
    if abs pxcor >= 24 and abs pxcor <= 30 and abs pycor >= 57 and abs pycor <= 62
      [ set pcolor pink ]
    if abs pxcor >= 31 and abs pxcor <= 37 and abs pycor >= 56 and abs pycor <= 62
      [ set pcolor pink ]
    if abs pxcor >= 38 and abs pxcor <= 41 and abs pycor >= 55 and abs pycor <= 62
      [ set pcolor pink ]
    if abs pxcor = 42 and abs pycor >= 57 and abs pycor <= 62
      [ set pcolor pink ]
    if abs pxcor = 43 and abs pycor >= 60 and abs pycor <= 62
      [ set pcolor pink ]
    if abs pxcor = 44 and abs pycor = 62
      [ set pcolor pink ]


    ; 409A, 403B, 414B, 420A
    if abs pxcor = 38 and abs pycor >= 42 and abs pycor <= 43
      [ set pcolor magenta ]
    if abs pxcor = 39 and abs pycor >= 41 and abs pycor <= 45
      [ set pcolor magenta ]
    if abs pxcor = 40 and abs pycor >= 40 and abs pycor <= 47
      [ set pcolor magenta ]
    if abs pxcor = 41 and abs pycor >= 39 and abs pycor <= 49
      [ set pcolor magenta ]
    if abs pxcor = 42 and abs pycor >= 38 and abs pycor <= 51
      [ set pcolor magenta ]
    if abs pxcor = 43 and abs pycor >= 37 and abs pycor <= 51
      [ set pcolor magenta ]
    if abs pxcor = 44 and abs pycor >= 36 and abs pycor <= 50
      [ set pcolor magenta ]
    if abs pxcor = 45 and abs pycor >= 37 and abs pycor <= 49
      [ set pcolor magenta ]
    if abs pxcor = 46 and abs pycor >= 38 and abs pycor <= 48
      [ set pcolor magenta ]
    if abs pxcor = 47 and abs pycor >= 39 and abs pycor <= 47
      [ set pcolor magenta ]
    if abs pxcor = 48 and abs pycor >= 40 and abs pycor <= 46
      [ set pcolor magenta ]
    if abs pxcor = 49 and abs pycor >= 41 and abs pycor <= 45
      [ set pcolor magenta ]
    if abs pxcor = 50 and abs pycor >= 42 and abs pycor <= 44
      [ set pcolor magenta ]
    if abs pxcor = 51 and abs pycor = 43
      [ set pcolor magenta ]

    ; 409B, 403A, 414A, 420B
    if abs pxcor = 46 and abs pycor >= 34 and abs pycor <= 35
      [ set pcolor magenta ]
    if abs pxcor = 47 and abs pycor >= 33 and abs pycor <= 36
      [ set pcolor magenta ]
    if abs pxcor = 48 and abs pycor >= 32 and abs pycor <= 37
      [ set pcolor magenta ]
    if abs pxcor = 49 and abs pycor >= 31 and abs pycor <= 38
      [ set pcolor magenta ]
    if abs pxcor = 50 and abs pycor >= 30 and abs pycor <= 39
      [ set pcolor magenta ]
    if abs pxcor = 51 and abs pycor >= 29 and abs pycor <= 40
      [ set pcolor magenta ]
    if abs pxcor = 52 and abs pycor >= 29 and abs pycor <= 41
      [ set pcolor magenta ]
    if abs pxcor = 53 and abs pycor >= 30 and abs pycor <= 41
      [ set pcolor magenta ]
    if abs pxcor = 54 and abs pycor >= 30 and abs pycor <= 40
      [ set pcolor magenta ]
    if abs pxcor = 55 and abs pycor >= 31 and abs pycor <= 39
      [ set pcolor magenta ]
    if abs pxcor = 56 and abs pycor >= 31 and abs pycor <= 38
      [ set pcolor magenta ]
    if abs pxcor = 57 and abs pycor >= 32 and abs pycor <= 37
      [ set pcolor magenta ]
    if abs pxcor = 58 and abs pycor >= 32 and abs pycor <= 36
      [ set pcolor magenta ]
    if abs pxcor = 59 and abs pycor >= 33 and abs pycor <= 35
      [ set pcolor magenta ]
    if abs pxcor = 60 and abs pycor >= 33 and abs pycor <= 34
      [ set pcolor magenta ]

    ; 410, 402, 413, 421
    if abs pxcor = 52 and abs pycor >= 23 and abs pycor <= 27
      [ set pcolor magenta ]
    if abs pxcor = 53 and abs pycor >= 15 and abs pycor <= 27
      [ set pcolor magenta ]
    if abs pxcor >= 54 and abs pxcor <= 55 and abs pycor >= 15 and abs pycor <= 28
      [ set pcolor magenta ]
    if abs pxcor >= 56 and abs pxcor <= 57 and abs pycor >= 15 and abs pycor <= 29
      [ set pcolor magenta ]
    if abs pxcor >= 58 and abs pxcor <= 59 and abs pycor >= 15 and abs pycor <= 30
      [ set pcolor magenta ]
    if abs pxcor >= 60 and abs pxcor <= 61 and abs pycor >= 15 and abs pycor <= 31
      [ set pcolor magenta ]
    if abs pxcor = 62 and abs pycor >= 15 and abs pycor <= 22
      [ set pcolor magenta ]

    ; 509A, 503B, 514B, 520A
    if abs pxcor = 43 and abs pycor = 55
      [ set pcolor pink ]
    if abs pxcor = 44 and abs pycor >= 54 and abs pycor <= 58
      [ set pcolor pink ]
    if abs pxcor = 45 and abs pycor >= 53 and abs pycor <= 60
      [ set pcolor pink ]
    if abs pxcor = 46 and abs pycor >= 52 and abs pycor <= 61
      [ set pcolor pink ]
    if abs pxcor = 47 and abs pycor >= 51 and abs pycor <= 60
      [ set pcolor pink ]
    if abs pxcor = 48 and abs pycor >= 50 and abs pycor <= 60
      [ set pcolor pink ]
    if abs pxcor = 49 and abs pycor >= 49 and abs pycor <= 60
      [ set pcolor pink ]
    if abs pxcor = 50 and abs pycor >= 48 and abs pycor <= 59
      [ set pcolor pink ]
    if abs pxcor = 51 and abs pycor >= 47 and abs pycor <= 59
      [ set pcolor pink ]
    if abs pxcor = 52 and abs pycor >= 46 and abs pycor <= 58
      [ set pcolor pink ]
    if abs pxcor = 53 and abs pycor >= 45 and abs pycor <= 58
      [ set pcolor pink ]
    if abs pxcor = 54 and abs pycor >= 46 and abs pycor <= 57
      [ set pcolor pink ]
    if abs pxcor = 55 and abs pycor >= 47 and abs pycor <= 57
      [ set pcolor pink ]
    if abs pxcor = 56 and abs pycor >= 48 and abs pycor <= 56
      [ set pcolor pink ]
    if abs pxcor = 57 and abs pycor >= 49 and abs pycor <= 55
      [ set pcolor pink ]
    if abs pxcor = 58 and abs pycor >= 50 and abs pycor <= 55
      [ set pcolor pink ]
    if abs pxcor = 59 and abs pycor >= 51 and abs pycor <= 54
      [ set pcolor pink ]
    if abs pxcor = 60 and abs pycor >= 52 and abs pycor <= 53
      [ set pcolor pink ]

    ; 509B, 503A, 514A, 520B
    if abs pxcor = 55 and abs pycor >= 43 and abs pycor <= 44
      [ set pcolor pink ]
    if abs pxcor = 56 and abs pycor >= 42 and abs pycor <= 45
      [ set pcolor pink ]
    if abs pxcor = 57 and abs pycor >= 41 and abs pycor <= 46
      [ set pcolor pink ]
    if abs pxcor = 58 and abs pycor >= 40 and abs pycor <= 47
      [ set pcolor pink ]
    if abs pxcor = 59 and abs pycor >= 39 and abs pycor <= 48
      [ set pcolor pink ]
    if abs pxcor = 60 and abs pycor >= 38 and abs pycor <= 49
      [ set pcolor pink ]
    if abs pxcor = 61 and abs pycor >= 37 and abs pycor <= 50
      [ set pcolor pink ]
    if abs pxcor = 62 and abs pycor >= 36 and abs pycor <= 51
      [ set pcolor pink ]
    if abs pxcor = 63 and abs pycor >= 34 and abs pycor <= 50
      [ set pcolor pink ]
    if abs pxcor = 64 and abs pycor >= 34 and abs pycor <= 49
      [ set pcolor pink ]
    if abs pxcor = 65 and abs pycor >= 35 and abs pycor <= 48
      [ set pcolor pink ]
    if abs pxcor = 66 and abs pycor >= 35 and abs pycor <= 46
      [ set pcolor pink ]
    if abs pxcor = 67 and abs pycor >= 36 and abs pycor <= 45
      [ set pcolor pink ]
    if abs pxcor = 68 and abs pycor >= 36 and abs pycor <= 43
      [ set pcolor pink ]
    if abs pxcor = 69 and abs pycor >= 37 and abs pycor <= 41
      [ set pcolor pink ]
    if abs pxcor = 70 and abs pycor >= 37 and abs pycor <= 39
      [ set pcolor pink ]

    ; 510, 502, 513, 521
    if abs pxcor = 63 and abs pycor >= 24 and abs pycor <= 31
      [ set pcolor pink ]
    if abs pxcor = 64 and abs pycor >= 15 and abs pycor <= 32
      [ set pcolor pink ]
    if abs pxcor = 65 or abs pxcor = 66 and abs pycor >= 15 and abs pycor <= 33
      [ set pcolor pink ]
    if abs pxcor = 67 or abs pxcor = 68 and abs pycor >= 15 and abs pycor <= 34
      [ set pcolor pink ]
    if abs pxcor = 69 or abs pxcor = 70 and abs pycor >= 15 and abs pycor <= 35
      [ set pcolor pink ]
    if abs pxcor = 71 and abs pycor >= 15 and abs pycor <= 32
      [ set pcolor pink ]

    ; paths (5th)
    if abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23 and abs pycor >= 57 and abs pycor <= 61
      [ set pcolor white ]

    if pxcor >= -31 and pxcor <= 31 and abs pycor = 56
      [ set pcolor white ]
    if abs pxcor >= 31 and abs pxcor <= 38 and abs pycor = 55
      [ set pcolor white ]
    if abs pxcor >= 38 and abs pxcor <= 44 and abs pycor = 54
      [ set pcolor white ]

    if abs pxcor >= 44 and abs pxcor <= 45 and abs pycor = 53
      [ set pcolor white ]
    if abs pxcor >= 45 and abs pxcor <= 46 and abs pycor = 52
      [ set pcolor white ]
    if abs pxcor >= 46 and abs pxcor <= 47 and abs pycor = 51
      [ set pcolor white ]
    if abs pxcor >= 47 and abs pxcor <= 48 and abs pycor = 50
      [ set pcolor white ]
    if abs pxcor >= 48 and abs pxcor <= 49 and abs pycor = 49
      [ set pcolor white ]
    if abs pxcor >= 49 and abs pxcor <= 50 and abs pycor = 48
      [ set pcolor white ]
    if abs pxcor >= 50 and abs pxcor <= 51 and abs pycor = 47
      [ set pcolor white ]
    if abs pxcor >= 51 and abs pxcor <= 52 and abs pycor = 46
      [ set pcolor white ]
    if abs pxcor >= 52 and abs pxcor <= 53 and abs pycor = 45
      [ set pcolor white ]
    if abs pxcor >= 53 and abs pxcor <= 54 and abs pycor = 44
      [ set pcolor white ]
    if abs pxcor >= 54 and abs pxcor <= 55 and abs pycor = 43
      [ set pcolor white ]
    if abs pxcor >= 55 and abs pxcor <= 56 and abs pycor = 42
      [ set pcolor white ]
    if abs pxcor >= 56 and abs pxcor <= 57 and abs pycor = 41
      [ set pcolor white ]
    if abs pxcor >= 57 and abs pxcor <= 58 and abs pycor = 40
      [ set pcolor white ]
    if abs pxcor >= 58 and abs pxcor <= 59 and abs pycor = 39
      [ set pcolor white ]
    if abs pxcor >= 59 and abs pxcor <= 60 and abs pycor = 38
      [ set pcolor white ]
    if abs pxcor >= 60 and abs pxcor <= 61 and abs pycor = 37
      [ set pcolor white ]
    if abs pxcor >= 61 and abs pxcor <= 62 and abs pycor = 36
      [ set pcolor white ]
    if abs pxcor = 62 and abs pycor >= 33 and abs pycor <= 35
      [ set pcolor white ]
    if abs pxcor = 63 and abs pycor >= 24 and abs pycor <= 33
      [ set pcolor white ]

    if abs pxcor = 64 and pycor >= -24 and pycor <= 24
      [ set pcolor white ]

    if abs pxcor = 42 and abs pycor >= 55 and abs pycor <= 56
      [ set pcolor white ]
    if abs pxcor = 43 and abs pycor >= 56 and abs pycor <= 59
      [ set pcolor white ]
    if abs pxcor = 44 and abs pycor >= 59 and abs pycor <= 61
      [ set pcolor white ]
    if abs pxcor = 45 and abs pycor >= 61 and abs pycor <= 62
      [ set pcolor white ]

    if abs pxcor >= 54 and abs pxcor <= 55 and abs pycor = 45
      [ set pcolor white ]
    if abs pxcor >= 55 and abs pxcor <= 56 and abs pycor = 46
      [ set pcolor white ]
    if abs pxcor >= 56 and abs pxcor <= 57 and abs pycor = 47
      [ set pcolor white ]
    if abs pxcor >= 57 and abs pxcor <= 58 and abs pycor = 48
      [ set pcolor white ]
    if abs pxcor >= 58 and abs pxcor <= 59 and abs pycor = 49
      [ set pcolor white ]
    if abs pxcor >= 59 and abs pxcor <= 60 and abs pycor = 50
      [ set pcolor white ]
    if abs pxcor >= 60 and abs pxcor <= 61 and abs pycor = 51
      [ set pcolor white ]
    if abs pxcor >= 61 and abs pxcor <= 62 and abs pycor = 52
      [ set pcolor white ]

    if abs pxcor >= 64 and abs pxcor <= 65 and abs pycor = 33
      [ set pcolor white ]
    if abs pxcor >= 65 and abs pxcor <= 67 and abs pycor = 34
      [ set pcolor white ]
    if abs pxcor >= 67 and abs pxcor <= 69 and abs pycor = 35
      [ set pcolor white ]
    if abs pxcor >= 69 and abs pxcor <= 70 and abs pycor = 36
      [ set pcolor white ]

    if abs pxcor >= 65 and abs pxcor <= 71 and abs pycor = 14
      [ set pcolor white ]

    if abs pxcor >= 65 and abs pxcor <= 71 and pycor = 0
      [ set pcolor white ]


    ; paths (4th)
    if abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23 and abs pycor >= 44 and abs pycor <= 54
      [ set pcolor white ]

    if pxcor >= -32 and pxcor <= 32 and abs pycor = 43
      [ set pcolor white ]
    if abs pxcor >= 32 and abs pxcor <= 38 and abs pycor = 42
      [ set pcolor white ]


    if abs pxcor >= 38 and abs pxcor <= 39 and abs pycor = 41
      [ set pcolor white ]
    if abs pxcor >= 39 and abs pxcor <= 40 and abs pycor = 40
      [ set pcolor white ]
    if abs pxcor >= 40 and abs pxcor <= 41 and abs pycor = 39
      [ set pcolor white ]
    if abs pxcor >= 41 and abs pxcor <= 42 and abs pycor = 38
      [ set pcolor white ]
    if abs pxcor >= 42 and abs pxcor <= 43 and abs pycor = 37
      [ set pcolor white ]
    if abs pxcor >= 43 and abs pxcor <= 44 and abs pycor = 36
      [ set pcolor white ]
    if abs pxcor >= 44 and abs pxcor <= 45 and abs pycor = 35
      [ set pcolor white ]
    if abs pxcor >= 45 and abs pxcor <= 46 and abs pycor = 34
      [ set pcolor white ]
    if abs pxcor >= 46 and abs pxcor <= 47 and abs pycor = 33
      [ set pcolor white ]
    if abs pxcor >= 47 and abs pxcor <= 48 and abs pycor = 32
      [ set pcolor white ]
    if abs pxcor >= 48 and abs pxcor <= 49 and abs pycor = 31
      [ set pcolor white ]
    if abs pxcor >= 49 and abs pxcor <= 50 and abs pycor = 30
      [ set pcolor white ]
    if abs pxcor >= 50 and abs pxcor <= 51 and abs pycor = 29
      [ set pcolor white ]

    if abs pxcor = 51 and abs pycor >= 25 and abs pycor <= 29
      [ set pcolor white ]

    if abs pxcor = 52 and pycor >= -25 and pycor <= 25
      [ set pcolor white ]

    if abs pxcor = 37 and abs pycor >= 42 and abs pycor <= 44
      [ set pcolor white ]
    if abs pxcor = 38 and abs pycor >= 44 and abs pycor <= 46
      [ set pcolor white ]
    if abs pxcor = 39 and abs pycor >= 46 and abs pycor <= 48
      [ set pcolor white ]
    if abs pxcor = 40 and abs pycor >= 48 and abs pycor <= 50
      [ set pcolor white ]
    if abs pxcor = 41 and abs pycor >= 50 and abs pycor <= 52
      [ set pcolor white ]

    if abs pxcor >= 45 and abs pxcor <= 46 and abs pycor = 36
      [ set pcolor white ]
    if abs pxcor >= 46 and abs pxcor <= 47 and abs pycor = 37
      [ set pcolor white ]
    if abs pxcor >= 47 and abs pxcor <= 48 and abs pycor = 38
      [ set pcolor white ]
    if abs pxcor >= 48 and abs pxcor <= 49 and abs pycor = 39
      [ set pcolor white ]
    if abs pxcor >= 49 and abs pxcor <= 50 and abs pycor = 40
      [ set pcolor white ]
    if abs pxcor >= 50 and abs pxcor <= 51 and abs pycor = 41
      [ set pcolor white ]
    if abs pxcor >= 51 and abs pxcor <= 52 and abs pycor = 42
      [ set pcolor white ]

    if abs pxcor >= 52 and abs pxcor <= 53 and abs pycor = 28
      [ set pcolor white ]
    if abs pxcor >= 53 and abs pxcor <= 55 and abs pycor = 29
      [ set pcolor white ]
    if abs pxcor >= 55 and abs pxcor <= 57 and abs pycor = 30
      [ set pcolor white ]
    if abs pxcor >= 57 and abs pxcor <= 59 and abs pycor = 31
      [ set pcolor white ]
    if abs pxcor >= 59 and abs pxcor <= 60 and abs pycor = 32
      [ set pcolor white ]

    if abs pxcor >= 53 and abs pxcor <= 62 and abs pycor = 14
      [ set pcolor white ]

    if abs pxcor >= 53 and abs pxcor <= 62 and pycor = 0
      [ set pcolor white ]

    ; paths (2nd)
    if abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23 and abs pycor >= 24 and abs pycor <= 40
      [ set pcolor white ]


    if pxcor >= -30 and pxcor <= 30 and abs pycor = 24
      [ set pcolor white ]

    if abs pxcor >= 30 and abs pxcor <= 32 and abs pycor = 23
      [ set pcolor white ]

    if abs pxcor >= 32 and abs pxcor <= 35 and abs pycor = 22
      [ set pcolor white ]
    if abs pxcor >= 35 and abs pxcor <= 38 and abs pycor = 23
      [ set pcolor white ]
    if abs pxcor = 38 and abs pycor <= 23 and abs pycor >= 19
      [ set pcolor white ]
    if abs pxcor >= 38 and abs pxcor <= 40 and abs pycor = 19
      [ set pcolor white ]
    if abs pxcor >= 40 and abs pxcor <= 42 and abs pycor = 18
      [ set pcolor white ]
    if abs pxcor >= 42 and abs pxcor <= 43 and abs pycor = 17
      [ set pcolor white ]

    if abs pxcor = 43 and pycor >= -16 and pycor <= 16
      [ set pcolor white ]

    if abs pxcor = 29 and abs pycor = 25
      [ set pcolor white ]
    if abs pxcor = 30 and abs pycor >= 25 and abs pycor <= 27
      [ set pcolor white ]
    if abs pxcor = 31 and abs pycor >= 27 and abs pycor <= 29
      [ set pcolor white ]
    if abs pxcor = 32 and abs pycor >= 29 and abs pycor <= 31
      [ set pcolor white ]
    if abs pxcor = 33 and abs pycor >= 31 and abs pycor <= 33
      [ set pcolor white ]
    if abs pxcor = 34 and abs pycor >= 33 and abs pycor <= 35
      [ set pcolor white ]
    if abs pxcor = 35 and abs pycor >= 35 and abs pycor <= 37
      [ set pcolor white ]
    if abs pxcor = 36 and abs pycor >= 37 and abs pycor <= 38
      [ set pcolor white ]

    if abs pxcor >= 39 and abs pxcor <= 40 and abs pycor = 23
      [ set pcolor white ]
    if abs pxcor >= 40 and abs pxcor <= 42 and abs pycor = 24
      [ set pcolor white ]
    if abs pxcor >= 42 and abs pxcor <= 44 and abs pycor = 25
      [ set pcolor white ]
    if abs pxcor >= 44 and abs pxcor <= 46 and abs pycor = 26
      [ set pcolor white ]
    if abs pxcor >= 46 and abs pxcor <= 47 and abs pycor = 27
      [ set pcolor white ]

    if abs pxcor >= 44 and abs pxcor <= 49 and abs pycor = 13
      [ set pcolor white ]

    if abs pxcor >= 44 and abs pxcor <= 49 and pycor = 0
      [ set pcolor white ]

    ; exits (5th)
    if (abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23) and abs pycor = 62
      [ set pcolor green ]
    if abs pxcor = 45 and abs pycor >= 61 and abs pycor <= 62
      [ set pcolor green ]
    if abs pxcor >= 61 and abs pxcor <= 62 and abs pycor = 52
      [ set pcolor green ]
    if abs pxcor >= 69 and abs pxcor <= 70 and abs pycor = 36
      [ set pcolor green ]
    if abs pxcor >= 70 and abs pxcor <= 71 and abs pycor = 14
      [ set pcolor green ]
    if abs pxcor >= 70 and abs pxcor <= 71 and pycor = 0
      [ set pcolor green ]

    ; exits (4th)
    if (abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23) and abs pycor = 54
      [ set pcolor green ]
    if abs pxcor = 41 and abs pycor >= 51 and abs pycor <= 52
      [ set pcolor green ]
    if abs pxcor >= 51 and abs pxcor <= 52 and abs pycor = 42
      [ set pcolor green ]
    if abs pxcor >= 59 and abs pxcor <= 60 and abs pycor = 32
      [ set pcolor green ]
    if abs pxcor >= 61 and abs pxcor <= 62 and abs pycor = 14
      [ set pcolor green ]
    if abs pxcor >= 61 and abs pxcor <= 62 and pycor = 0
      [ set pcolor green ]

    ; exits (2nd)
    if (abs pxcor = 7 or abs pxcor = 8 or abs pxcor = 22 or abs pxcor = 23) and abs pycor = 40
      [ set pcolor green ]
    if abs pxcor = 36 and abs pycor >= 37 and abs pycor <= 38
      [ set pcolor green ]
    if abs pxcor >= 46 and abs pxcor <= 47 and abs pycor = 27
      [ set pcolor green ]
    if abs pxcor >= 48 and abs pxcor <= 49 and abs pycor = 13
      [ set pcolor green ]
    if abs pxcor >= 48 and abs pxcor <= 49 and pycor = 0
      [ set pcolor green ]

    ; exits (1st)
    if (abs pxcor = 36 and abs pycor = 20) or (abs pxcor = 35 and abs pycor = 20) or (abs pxcor = 36 and abs pycor = 19)
      [ set pcolor green ]

  ]

  ask patches with [ pcolor = black ] [
    if pxcor <= 66 and pxcor >= -66 and pycor <= 55 and pycor >= -55
      [ set pcolor gray ]
  ]

  ask patches with [ pcolor = gray ] [
    if abs pxcor <= 66 and abs pxcor >= 59 and abs pycor <= 55 and abs pycor >= 47
      [ set pcolor black ]
  ]
end

to setup-people
  create-persons fifth_floor [
    set floor-number 5
    move-to one-of patches with [pcolor = pink]
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = pink] >= 1] [distance myself]
  ]

  create-persons fourth_floor [
    set floor-number 4
    move-to one-of patches with [pcolor = magenta]
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = magenta] >= 1] [distance myself]
  ]

  create-persons second_floor [
    set floor-number 2
    move-to one-of patches with [pcolor = blue]
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = blue] >= 1] [distance myself]
  ]

  create-persons first_floor [
    set floor-number 1
    move-to one-of patches with [pcolor = sky]
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = sky] >= 1] [distance myself]

  ]

  ask persons [
    set color black
    set speed 0.5 + random-float 1
    set behavior "n"
    face nearest-exit
  ]

  ask n-of ((fifth_floor + fourth_floor + second_floor + first_floor) / 100 * percentage_prepared) persons with [behavior = "n"] [
    set color red
    set behavior "P"
  ]

  ask n-of ((fifth_floor + fourth_floor + second_floor + first_floor) / 100 * percentage_listeners) persons with [behavior = "n"] [
    set color yellow
    set behavior "L"
  ]

  ask n-of ((fifth_floor + fourth_floor + second_floor + first_floor) / 100 * percentage_helpers) persons with [behavior = "n"] [
    set color brown
    set behavior "H"
  ]

end

to setup-fire
  ask patch fire_x fire_y [ set pcolor orange ]
end

to spread-fire
  ; spread fire after 2 ticks
  if ticks mod 2 = 0 [
    ask patches with [ pcolor = orange ] [
      ask neighbors with [ pcolor != black ] [

        ; slower fire if changing floors
        ifelse pcolor = gray
        [
          ; faster fire if neighbors are on fire
          ;if count neighbors with [ pcolor = orange ] = 4 [ set pcolor orange ]
          if random 100 < (rate_of_fire_spread / 10)  [ set pcolor orange ]
        ]
        [
          if random 100 < rate_of_fire_spread [ set pcolor orange ]
        ]
      ]
    ]
  ]

  ; kills people in the fire
  ask persons [
    if [ pcolor ] of patch-here = orange [
      set fire-kills fire-kills + 1
      die
    ]
  ]
end

to move-prepared-and-helpers
  find-nearest-exit
  ask persons with [ behavior = "P" or behavior = "H" ] [
    face nearest-exit
      ifelse distance nearest-exit < speed
      [
        move-to nearest-exit
        evacuate
      ]
      [
        move-forward
      ]
  ]

end

to move-listeners
  ask persons with [ behavior = "L" ] [
    ifelse distance min-one-of patches with [ pcolor = green ] [ distance myself ] <= 10
      [ face min-one-of patches with [ pcolor = green ] [ distance myself ] ]                 ; face exit
      [ ifelse min-one-of persons with [ behavior = "H" ] [ distance myself ] != nobody and distance min-one-of persons with [ behavior = "H" ] [ distance myself ] <= 30
        [ face min-one-of persons with [ behavior = "H" ] [ distance myself ] ]               ; face nearest helper
        [ ifelse distance min-one-of persons [ distance myself ] != nobody and distance min-one-of persons [ distance myself ] <= 10
          [ face min-one-of persons [ distance myself ] ]                                     ; face nearest person
          [ face min-one-of patches with [ pcolor = orange ] [ distance myself ] right 180 ]  ; face away from fire
        ]
      ]
    move-forward
    if distance min-one-of patches with [pcolor = green] [ distance myself ] < speed [
      move-to min-one-of patches with [pcolor = green] [ distance myself ]
      evacuate
    ]
  ]

end

to find-nearest-exit

  ask persons with [ floor-number = 5 and (behavior = "P" or behavior = "H")] [
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = pink] >= 1] [ distance myself ]
  ]

  ask persons with [ floor-number = 4 and (behavior = "P" or behavior = "H") ] [
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = magenta] >= 1] [ distance myself ]
  ]

  ask persons with [ floor-number = 2 and (behavior = "P" or behavior = "H") ] [
    set nearest-exit min-one-of patches with [pcolor = green and count neighbors with [pcolor = blue] >= 1] [ distance myself ]
  ]

  ask persons with [ floor-number = 1 and (behavior = "P" or behavior = "H") ] [
    let fire1 1000000
    let fire2 1000000
    let fire3 1000000
    let fire4 1000000
    if dist1 != 1000000 [
      set dist1 distancexy 35 20
      ask patch 35 20 [ set fire1 distance min-one-of patches with [pcolor = orange] [distance myself] ]
      if fire1 < dist1 [set dist1 1000000]
    ]

    if dist2 != 1000000 [
      set dist2 distancexy -35 20
      ask patch -35 20 [ set fire2 distance min-one-of patches with [pcolor = orange] [distance myself] ]
      if fire2 < dist2 [set dist2 1000000]
    ]

    if dist3 != 1000000 [
      set dist3 distancexy 35 -20
      ask patch 35 -20 [ set fire3 distance min-one-of patches with [pcolor = orange] [distance myself] ]
      if fire3 < dist3 [set dist3 1000000]
    ]

    if dist4 != 1000000 [
      set dist4 distancexy -35 -20
      ask patch -35 -20 [ set fire4 distance min-one-of patches with [pcolor = orange] [distance myself] ]
      if fire4 < dist4 [set dist4 1000000]
    ]

    let curr-dist dist1
    set nearest-exit patch 35 20
    if dist2 < curr-dist [set nearest-exit patch -35 20 set curr-dist dist2]
    if dist3 < curr-dist [set nearest-exit patch 35 -20 set curr-dist dist3]
    if dist4 < curr-dist [set nearest-exit patch -35 -20 set curr-dist dist4]
  ]
end


to move-forward
  if any? turtles-on patch-ahead speed or [pcolor] of patch-ahead speed = gray [ifelse random 2 = 0 [right 45 + random 45] [left 45 + random 45]]
  if [pcolor] of patch-ahead speed != gray [forward speed]
end

to evacuate
  set person-evacuated person-evacuated + 1
  die
end

to go
  move-prepared-and-helpers
  move-listeners
  spread-fire
  tick
end
@#$#@#$#@
GRAPHICS-WINDOW
420
27
1183
791
-1
-1
5.0
1
10
1
1
1
0
0
0
1
-75
75
-75
75
0
0
1
ticks
30.0

SLIDER
38
147
210
180
first_floor
first_floor
0
500
500.0
20
1
NIL
HORIZONTAL

TEXTBOX
29
100
355
143
The following sliders represent the number of people per floor of the arena
15
0.0
1

SLIDER
218
144
390
177
second_floor
second_floor
0
500
500.0
20
1
NIL
HORIZONTAL

SLIDER
37
186
209
219
fourth_floor
fourth_floor
0
500
500.0
20
1
NIL
HORIZONTAL

SLIDER
217
185
389
218
fifth_floor
fifth_floor
0
500
500.0
20
1
NIL
HORIZONTAL

TEXTBOX
23
278
361
320
The following sliders represent the percentage of the type of people in the arena.
15
0.0
1

SLIDER
33
328
206
361
percentage_prepared
percentage_prepared
0
100 - percentage_listeners - percentage_fighters
27.0
1
1
NIL
HORIZONTAL

SLIDER
32
372
205
405
percentage_fighters
percentage_fighters
0
100 - percentage_listeners - percentage_prepared
0.0
1
1
NIL
HORIZONTAL

SLIDER
212
328
385
361
percentage_listeners
percentage_listeners
0
100 - percentage_prepared - percentage_fighters
54.0
1
1
NIL
HORIZONTAL

SLIDER
214
372
387
405
percentage_helpers
percentage_helpers
0
100
0.0
1
1
NIL
HORIZONTAL

SLIDER
212
443
385
476
rate_of_fire_spread
rate_of_fire_spread
0
100
24.0
1
1
NIL
HORIZONTAL

BUTTON
142
43
206
77
setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
209
42
276
79
NIL
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
32
501
205
534
fire_x
fire_x
-71
71
10.0
1
1
NIL
HORIZONTAL

SLIDER
216
500
389
533
fire_y
fire_y
-62
62
14.0
1
1
NIL
HORIZONTAL

MONITOR
260
587
381
632
NIL
fire-kills
0
1
11

MONITOR
262
638
379
683
NIL
person-evacuated
0
1
11

PLOT
50
576
250
726
plot 1
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" "plot fire-kills"
"pen-1" 1.0 0 -7500403 true "" "plot person-evacuated"

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.3.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
