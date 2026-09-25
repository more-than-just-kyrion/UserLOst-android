.class public final Lcom/termux/terminal/WcWidth;
.super Ljava/lang/Object;
.source "WcWidth.java"


# static fields
.field private static final WIDE_EASTASIAN:[[I

.field private static final ZERO_WIDTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 119

    const/16 v0, 0x144

    .line 18
    new-array v0, v0, [[I

    const/16 v1, 0x300

    const/16 v2, 0x36f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x483

    const/16 v2, 0x489

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x591

    const/16 v2, 0x5bd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x5bf

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x5c1

    const/16 v2, 0x5c2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x5c4

    const/16 v2, 0x5c5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x5c7

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x610

    const/16 v2, 0x61a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x64b

    const/16 v2, 0x65f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x670

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x6d6

    const/16 v2, 0x6dc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x6df

    const/16 v2, 0x6e4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x6e7

    const/16 v2, 0x6e8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x6ea

    const/16 v2, 0x6ed

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x711

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0x730

    const/16 v2, 0x74a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x7a6

    const/16 v2, 0x7b0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x7eb

    const/16 v2, 0x7f3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x7fd

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v1, 0x816

    const/16 v2, 0x819

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x81b

    const/16 v2, 0x823

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v1, 0x825

    const/16 v2, 0x827

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x829

    const/16 v2, 0x82d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v1, 0x859

    const/16 v2, 0x85b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x8d3

    const/16 v2, 0x8e1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v1, 0x8e3

    const/16 v2, 0x902

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v1, 0x93a

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v1, 0x93c

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v1, 0x941

    const/16 v2, 0x948

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v1, 0x94d

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v1, 0x951

    const/16 v2, 0x957

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v1, 0x962

    const/16 v2, 0x963

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x981

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/16 v1, 0x9bc

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v1, 0x9c1

    const/16 v2, 0x9c4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/16 v1, 0x9cd

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/16 v1, 0x9e2

    const/16 v2, 0x9e3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/16 v1, 0x9fe

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/16 v1, 0xa01

    const/16 v2, 0xa02

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/16 v1, 0xa3c

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/16 v1, 0xa41

    const/16 v2, 0xa42

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const/16 v1, 0xa47

    const/16 v2, 0xa48

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0xa4b

    const/16 v2, 0xa4d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/16 v1, 0xa51

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/16 v1, 0xa70

    const/16 v2, 0xa71

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const/16 v1, 0xa75

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v1, 0xa81

    const/16 v2, 0xa82

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const/16 v1, 0xabc

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/16 v1, 0xac1

    const/16 v2, 0xac5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const/16 v1, 0xac7

    const/16 v2, 0xac8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/16 v1, 0xacd

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const/16 v1, 0xae2

    const/16 v2, 0xae3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v1, 0xafa

    const/16 v2, 0xaff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const/16 v1, 0xb01

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const/16 v1, 0xb3c

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const/16 v1, 0xb3f

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/16 v1, 0xb41

    const/16 v2, 0xb44

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const/16 v1, 0xb4d

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const/16 v1, 0xb55

    const/16 v2, 0xb56

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const/16 v1, 0xb62

    const/16 v2, 0xb63

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const/16 v1, 0xb82

    const/16 v2, 0xb82

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const/16 v1, 0xbc0

    const/16 v2, 0xbc0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/16 v1, 0xbcd

    const/16 v2, 0xbcd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const/16 v1, 0xc00

    const/16 v2, 0xc00

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const/16 v1, 0xc04

    const/16 v2, 0xc04

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const/16 v1, 0xc3e

    const/16 v2, 0xc40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const/16 v1, 0xc46

    const/16 v2, 0xc48

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const/16 v1, 0xc4a

    const/16 v2, 0xc4d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const/16 v1, 0xc55

    const/16 v2, 0xc56

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const/16 v1, 0xc62

    const/16 v2, 0xc63

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const/16 v1, 0xc81

    const/16 v2, 0xc81

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const/16 v1, 0xcbc

    const/16 v2, 0xcbc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const/16 v1, 0xcbf

    const/16 v2, 0xcbf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const/16 v1, 0xcc6

    const/16 v2, 0xcc6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const/16 v1, 0xccc

    const/16 v2, 0xccd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const/16 v1, 0xce2

    const/16 v2, 0xce3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const/16 v1, 0xd00

    const/16 v2, 0xd01

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const/16 v1, 0xd3b

    const/16 v2, 0xd3c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const/16 v1, 0xd41

    const/16 v2, 0xd44

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const/16 v1, 0xd4d

    const/16 v2, 0xd4d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const/16 v1, 0xd62

    const/16 v2, 0xd63

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const/16 v1, 0xd81

    const/16 v2, 0xd81

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const/16 v1, 0xdca

    const/16 v2, 0xdca

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const/16 v1, 0xdd2

    const/16 v2, 0xdd4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const/16 v1, 0xdd6

    const/16 v2, 0xdd6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const/16 v1, 0xe31

    const/16 v2, 0xe31

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const/16 v1, 0xe34

    const/16 v2, 0xe3a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const/16 v1, 0xe47

    const/16 v2, 0xe4e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const/16 v1, 0xeb1

    const/16 v2, 0xeb1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const/16 v1, 0xeb4

    const/16 v2, 0xebc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const/16 v1, 0xec8

    const/16 v2, 0xecd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const/16 v1, 0xf18

    const/16 v2, 0xf19

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const/16 v1, 0xf35

    const/16 v2, 0xf35

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const/16 v1, 0xf37

    const/16 v2, 0xf37

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const/16 v1, 0xf39

    const/16 v2, 0xf39

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const/16 v1, 0xf71

    const/16 v2, 0xf7e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const/16 v1, 0xf80

    const/16 v2, 0xf84

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const/16 v1, 0xf86

    const/16 v2, 0xf87

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const/16 v1, 0xf8d

    const/16 v2, 0xf97

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const/16 v1, 0xf99

    const/16 v2, 0xfbc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const/16 v1, 0xfc6

    const/16 v2, 0xfc6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const/16 v1, 0x102d

    const/16 v2, 0x1030

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const/16 v1, 0x1032

    const/16 v2, 0x1037

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const/16 v1, 0x1039

    const/16 v2, 0x103a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const/16 v1, 0x103d

    const/16 v2, 0x103e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const/16 v1, 0x1058

    const/16 v2, 0x1059

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const/16 v1, 0x105e

    const/16 v2, 0x1060

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const/16 v1, 0x1071

    const/16 v2, 0x1074

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const/16 v1, 0x1082

    const/16 v2, 0x1082

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const/16 v1, 0x1085

    const/16 v2, 0x1086

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const/16 v1, 0x108d

    const/16 v2, 0x108d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const/16 v1, 0x109d

    const/16 v2, 0x109d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const/16 v1, 0x135d

    const/16 v2, 0x135f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const/16 v1, 0x1712

    const/16 v2, 0x1714

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const/16 v1, 0x1732

    const/16 v2, 0x1734

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const/16 v1, 0x1752

    const/16 v2, 0x1753

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const/16 v1, 0x1772

    const/16 v2, 0x1773

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const/16 v1, 0x17b4

    const/16 v2, 0x17b5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const/16 v1, 0x17b7

    const/16 v2, 0x17bd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const/16 v1, 0x17c6

    const/16 v2, 0x17c6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const/16 v1, 0x17c9

    const/16 v2, 0x17d3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const/16 v1, 0x17dd

    const/16 v2, 0x17dd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const/16 v1, 0x180b

    const/16 v2, 0x180d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const/16 v1, 0x1885

    const/16 v2, 0x1886

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const/16 v1, 0x18a9

    const/16 v2, 0x18a9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const/16 v1, 0x1920

    const/16 v2, 0x1922

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const/16 v1, 0x1927

    const/16 v2, 0x1928

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const/16 v1, 0x1932

    const/16 v2, 0x1932

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const/16 v1, 0x1939

    const/16 v2, 0x193b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const/16 v1, 0x1a17

    const/16 v2, 0x1a18

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const/16 v1, 0x1a1b

    const/16 v2, 0x1a1b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const/16 v1, 0x1a56

    const/16 v2, 0x1a56

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const/16 v1, 0x1a58

    const/16 v2, 0x1a5e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const/16 v1, 0x1a60

    const/16 v2, 0x1a60

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const/16 v1, 0x1a62

    const/16 v2, 0x1a62

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const/16 v1, 0x1a65

    const/16 v2, 0x1a6c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const/16 v1, 0x1a73

    const/16 v2, 0x1a7c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const/16 v1, 0x1a7f

    const/16 v2, 0x1a7f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const/16 v1, 0x1ab0

    const/16 v2, 0x1ac0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const/16 v1, 0x1b00

    const/16 v2, 0x1b03

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const/16 v1, 0x1b34

    const/16 v2, 0x1b34

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const/16 v1, 0x1b36

    const/16 v2, 0x1b3a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const/16 v1, 0x1b3c

    const/16 v2, 0x1b3c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const/16 v1, 0x1b42

    const/16 v2, 0x1b42

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const/16 v1, 0x1b6b

    const/16 v2, 0x1b73

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const/16 v1, 0x1b80

    const/16 v2, 0x1b81

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const/16 v1, 0x1ba2

    const/16 v2, 0x1ba5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const/16 v1, 0x1ba8

    const/16 v2, 0x1ba9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const/16 v1, 0x1bab

    const/16 v2, 0x1bad

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const/16 v1, 0x1be6    # 1.0008E-41f

    const/16 v2, 0x1be6    # 1.0008E-41f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const/16 v1, 0x1be8

    const/16 v2, 0x1be9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const/16 v1, 0x1bed

    const/16 v2, 0x1bed

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const/16 v1, 0x1bef

    const/16 v2, 0x1bf1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const/16 v1, 0x1c2c

    const/16 v2, 0x1c33

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const/16 v1, 0x1c36

    const/16 v2, 0x1c37

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const/16 v1, 0x1cd0

    const/16 v2, 0x1cd2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const/16 v1, 0x1cd4

    const/16 v2, 0x1ce0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const/16 v1, 0x1ce2

    const/16 v2, 0x1ce8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const/16 v1, 0x1ced

    const/16 v2, 0x1ced

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const/16 v1, 0x1cf4

    const/16 v2, 0x1cf4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const/16 v1, 0x1cf8

    const/16 v2, 0x1cf9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const/16 v1, 0x1dc0

    const/16 v2, 0x1df9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const/16 v1, 0x1dfb

    const/16 v2, 0x1dff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const/16 v1, 0x20d0

    const/16 v2, 0x20f0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const/16 v1, 0x2cef

    const/16 v2, 0x2cf1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const/16 v1, 0x2d7f

    const/16 v2, 0x2d7f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const/16 v1, 0x2de0

    const/16 v2, 0x2dff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const/16 v1, 0x302a

    const/16 v2, 0x302d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const/16 v1, 0x3099

    const/16 v2, 0x309a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const v1, 0xa66f

    const v2, 0xa672

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const v1, 0xa674

    const v2, 0xa67d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const v1, 0xa69e

    const v2, 0xa69f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const v1, 0xa6f0

    const v2, 0xa6f1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const v1, 0xa802

    const v2, 0xa802

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const v1, 0xa806

    const v2, 0xa806

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const v1, 0xa80b

    const v2, 0xa80b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const v1, 0xa825

    const v2, 0xa826

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const v1, 0xa82c

    const v2, 0xa82c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const v1, 0xa8c4

    const v2, 0xa8c5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const v1, 0xa8e0

    const v2, 0xa8f1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const v1, 0xa8ff

    const v2, 0xa8ff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const v1, 0xa926

    const v2, 0xa92d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const v1, 0xa947

    const v2, 0xa951

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const v1, 0xa980

    const v2, 0xa982

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const v1, 0xa9b3

    const v2, 0xa9b3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const v1, 0xa9b6

    const v2, 0xa9b9

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const v1, 0xa9bc

    const v2, 0xa9bd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const v1, 0xa9e5

    const v2, 0xa9e5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const v1, 0xaa29

    const v2, 0xaa2e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const v1, 0xaa31

    const v2, 0xaa32

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const v1, 0xaa35

    const v2, 0xaa36

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const v1, 0xaa43

    const v2, 0xaa43

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const v1, 0xaa4c

    const v2, 0xaa4c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const v1, 0xaa7c

    const v2, 0xaa7c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const v1, 0xaab0

    const v2, 0xaab0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const v1, 0xaab2

    const v2, 0xaab4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const v1, 0xaab7

    const v2, 0xaab8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const v1, 0xaabe

    const v2, 0xaabf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const v1, 0xaac1

    const v2, 0xaac1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const v1, 0xaaec

    const v2, 0xaaed

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const v1, 0xaaf6

    const v2, 0xaaf6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const v1, 0xabe5

    const v2, 0xabe5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const v1, 0xabe8

    const v2, 0xabe8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const v1, 0xabed

    const v2, 0xabed

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const v1, 0xfb1e

    const v2, 0xfb1e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const v1, 0xfe00

    const v2, 0xfe0f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const v1, 0xfe20

    const v2, 0xfe2f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const v1, 0x101fd

    const v2, 0x101fd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const v1, 0x102e0

    const v2, 0x102e0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const v1, 0x10376

    const v2, 0x1037a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const v1, 0x10a01

    const v2, 0x10a03

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const v1, 0x10a05

    const v2, 0x10a06

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const v1, 0x10a0c

    const v2, 0x10a0f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const v1, 0x10a38

    const v2, 0x10a3a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const v1, 0x10a3f

    const v2, 0x10a3f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const v1, 0x10ae5

    const v2, 0x10ae6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const v1, 0x10d24

    const v2, 0x10d27

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const v1, 0x10eab

    const v2, 0x10eac

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const v1, 0x10f46

    const v2, 0x10f50

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const v1, 0x11001

    const v2, 0x11001

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const v1, 0x11038

    const v2, 0x11046

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const v1, 0x1107f

    const v2, 0x11081

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const v1, 0x110b3

    const v2, 0x110b6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const v1, 0x110b9

    const v2, 0x110ba

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const v1, 0x11100

    const v2, 0x11102

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const v1, 0x11127

    const v2, 0x1112b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const v1, 0x1112d

    const v2, 0x11134

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const v1, 0x11173

    const v2, 0x11173

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const v1, 0x11180

    const v2, 0x11181

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const v1, 0x111b6

    const v2, 0x111be

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const v1, 0x111c9

    const v2, 0x111cc

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const v1, 0x111cf

    const v2, 0x111cf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const v1, 0x1122f

    const v2, 0x11231

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const v1, 0x11234

    const v2, 0x11234

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const v1, 0x11236

    const v2, 0x11237

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const v1, 0x1123e

    const v2, 0x1123e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const v1, 0x112df

    const v2, 0x112df

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const v1, 0x112e3

    const v2, 0x112ea

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const v1, 0x11300

    const v2, 0x11301

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const v1, 0x1133b

    const v2, 0x1133c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const v1, 0x11340

    const v2, 0x11340

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const v1, 0x11366

    const v2, 0x1136c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const v1, 0x11370

    const v2, 0x11374

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const v1, 0x11438

    const v2, 0x1143f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const v1, 0x11442

    const v2, 0x11444

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const v1, 0x11446

    const v2, 0x11446

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const v1, 0x1145e

    const v2, 0x1145e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const v1, 0x114b3

    const v2, 0x114b8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const v1, 0x114ba

    const v2, 0x114ba

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const v1, 0x114bf

    const v2, 0x114c0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const v1, 0x114c2

    const v2, 0x114c3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const v1, 0x115b2

    const v2, 0x115b5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const v1, 0x115bc

    const v2, 0x115bd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const v1, 0x115bf

    const v2, 0x115c0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const v1, 0x115dc

    const v2, 0x115dd

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const v1, 0x11633

    const v2, 0x1163a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const v1, 0x1163d

    const v2, 0x1163d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const v1, 0x1163f

    const v2, 0x11640

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const v1, 0x116ab

    const v2, 0x116ab

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x102

    aput-object v1, v0, v2

    const v1, 0x116ad

    const v2, 0x116ad

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x103

    aput-object v1, v0, v2

    const v1, 0x116b0

    const v2, 0x116b5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x104

    aput-object v1, v0, v2

    const v1, 0x116b7

    const v2, 0x116b7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x105

    aput-object v1, v0, v2

    const v1, 0x1171d

    const v2, 0x1171f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x106

    aput-object v1, v0, v2

    const v1, 0x11722

    const v2, 0x11725

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x107

    aput-object v1, v0, v2

    const v1, 0x11727

    const v2, 0x1172b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x108

    aput-object v1, v0, v2

    const v1, 0x1182f

    const v2, 0x11837

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x109

    aput-object v1, v0, v2

    const v1, 0x11839

    const v2, 0x1183a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    const v1, 0x1193b

    const v2, 0x1193c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    const v1, 0x1193e

    const v2, 0x1193e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    const v1, 0x11943

    const v2, 0x11943

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    const v1, 0x119d4

    const v2, 0x119d7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    const v1, 0x119da

    const v2, 0x119db

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    const v1, 0x119e0

    const v2, 0x119e0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x110

    aput-object v1, v0, v2

    const v1, 0x11a01

    const v2, 0x11a0a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x111

    aput-object v1, v0, v2

    const v1, 0x11a33

    const v2, 0x11a38

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x112

    aput-object v1, v0, v2

    const v1, 0x11a3b

    const v2, 0x11a3e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x113

    aput-object v1, v0, v2

    const v1, 0x11a47

    const v2, 0x11a47

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x114

    aput-object v1, v0, v2

    const v1, 0x11a51

    const v2, 0x11a56

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x115

    aput-object v1, v0, v2

    const v1, 0x11a59

    const v2, 0x11a5b

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x116

    aput-object v1, v0, v2

    const v1, 0x11a8a

    const v2, 0x11a96

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x117

    aput-object v1, v0, v2

    const v1, 0x11a98

    const v2, 0x11a99

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x118

    aput-object v1, v0, v2

    const v1, 0x11c30

    const v2, 0x11c36

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x119

    aput-object v1, v0, v2

    const v1, 0x11c38

    const v2, 0x11c3d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    const v1, 0x11c3f

    const v2, 0x11c3f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    const v1, 0x11c92

    const v2, 0x11ca7

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    const v1, 0x11caa

    const v2, 0x11cb0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    const v1, 0x11cb2

    const v2, 0x11cb3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    const v1, 0x11cb5

    const v2, 0x11cb6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    const v1, 0x11d31

    const v2, 0x11d36

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x120

    aput-object v1, v0, v2

    const v1, 0x11d3a

    const v2, 0x11d3a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x121

    aput-object v1, v0, v2

    const v1, 0x11d3c

    const v2, 0x11d3d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x122

    aput-object v1, v0, v2

    const v1, 0x11d3f

    const v2, 0x11d45

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x123

    aput-object v1, v0, v2

    const v1, 0x11d47

    const v2, 0x11d47

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x124

    aput-object v1, v0, v2

    const v1, 0x11d90

    const v2, 0x11d91

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x125

    aput-object v1, v0, v2

    const v1, 0x11d95

    const v2, 0x11d95

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x126

    aput-object v1, v0, v2

    const v1, 0x11d97

    const v2, 0x11d97

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x127

    aput-object v1, v0, v2

    const v1, 0x11ef3

    const v2, 0x11ef4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x128

    aput-object v1, v0, v2

    const v1, 0x16af0

    const v2, 0x16af4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x129

    aput-object v1, v0, v2

    const v1, 0x16b30

    const v2, 0x16b36

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    const v1, 0x16f4f

    const v2, 0x16f4f

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    const v1, 0x16f8f

    const v2, 0x16f92

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    const v1, 0x16fe4

    filled-new-array {v1, v1}, [I

    move-result-object v2

    const/16 v3, 0x12d

    aput-object v2, v0, v3

    const v2, 0x1bc9d

    const v3, 0x1bc9e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x12e

    aput-object v2, v0, v3

    const v2, 0x1d167

    const v3, 0x1d169

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x12f

    aput-object v2, v0, v3

    const v2, 0x1d17b

    const v3, 0x1d182

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x130

    aput-object v2, v0, v3

    const v2, 0x1d185

    const v3, 0x1d18b

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x131

    aput-object v2, v0, v3

    const v2, 0x1d1aa

    const v3, 0x1d1ad

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x132

    aput-object v2, v0, v3

    const v2, 0x1d242

    const v3, 0x1d244

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x133

    aput-object v2, v0, v3

    const v2, 0x1da00

    const v3, 0x1da36

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x134

    aput-object v2, v0, v3

    const v2, 0x1da3b

    const v3, 0x1da6c

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x135

    aput-object v2, v0, v3

    const v2, 0x1da75

    const v3, 0x1da75

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x136

    aput-object v2, v0, v3

    const v2, 0x1da84

    const v3, 0x1da84

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x137

    aput-object v2, v0, v3

    const v2, 0x1da9b

    const v3, 0x1da9f

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x138

    aput-object v2, v0, v3

    const v2, 0x1daa1

    const v3, 0x1daaf

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x139

    aput-object v2, v0, v3

    const v2, 0x1e000

    const v3, 0x1e006

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13a

    aput-object v2, v0, v3

    const v2, 0x1e008

    const v3, 0x1e018

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13b

    aput-object v2, v0, v3

    const v2, 0x1e01b

    const v3, 0x1e021

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13c

    aput-object v2, v0, v3

    const v2, 0x1e023

    const v3, 0x1e024

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13d

    aput-object v2, v0, v3

    const v2, 0x1e026

    const v3, 0x1e02a

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13e

    aput-object v2, v0, v3

    const v2, 0x1e130

    const v3, 0x1e136

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x13f

    aput-object v2, v0, v3

    const v2, 0x1e2ec

    const v3, 0x1e2ef

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x140

    aput-object v2, v0, v3

    const v2, 0x1e8d0

    const v3, 0x1e8d6

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x141

    aput-object v2, v0, v3

    const v2, 0x1e944

    const v3, 0x1e94a

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x142

    aput-object v2, v0, v3

    const v2, 0xe0100

    const v3, 0xe01ef

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x143

    aput-object v2, v0, v3

    sput-object v0, Lcom/termux/terminal/WcWidth;->ZERO_WIDTH:[[I

    const/16 v0, 0x1100

    const/16 v2, 0x115f

    .line 347
    filled-new-array {v0, v2}, [I

    move-result-object v3

    const/16 v0, 0x231a

    const/16 v2, 0x231b

    filled-new-array {v0, v2}, [I

    move-result-object v4

    const/16 v0, 0x2329

    const/16 v2, 0x232a

    filled-new-array {v0, v2}, [I

    move-result-object v5

    const/16 v0, 0x23e9

    const/16 v2, 0x23ec

    filled-new-array {v0, v2}, [I

    move-result-object v6

    const/16 v0, 0x23f0

    const/16 v2, 0x23f0

    filled-new-array {v0, v2}, [I

    move-result-object v7

    const/16 v0, 0x23f3

    const/16 v2, 0x23f3

    filled-new-array {v0, v2}, [I

    move-result-object v8

    const/16 v0, 0x25fd

    const/16 v2, 0x25fe

    filled-new-array {v0, v2}, [I

    move-result-object v9

    const/16 v0, 0x2614

    const/16 v2, 0x2615

    filled-new-array {v0, v2}, [I

    move-result-object v10

    const/16 v0, 0x2648

    const/16 v2, 0x2653

    filled-new-array {v0, v2}, [I

    move-result-object v11

    const/16 v0, 0x267f

    const/16 v2, 0x267f

    filled-new-array {v0, v2}, [I

    move-result-object v12

    const/16 v0, 0x2693

    const/16 v2, 0x2693

    filled-new-array {v0, v2}, [I

    move-result-object v13

    const/16 v0, 0x26a1

    const/16 v2, 0x26a1

    filled-new-array {v0, v2}, [I

    move-result-object v14

    const/16 v0, 0x26aa

    const/16 v2, 0x26ab

    filled-new-array {v0, v2}, [I

    move-result-object v15

    const/16 v0, 0x26bd

    const/16 v2, 0x26be

    filled-new-array {v0, v2}, [I

    move-result-object v16

    const/16 v0, 0x26c4

    const/16 v2, 0x26c5

    filled-new-array {v0, v2}, [I

    move-result-object v17

    const/16 v0, 0x26ce

    const/16 v2, 0x26ce

    filled-new-array {v0, v2}, [I

    move-result-object v18

    const/16 v0, 0x26d4

    const/16 v2, 0x26d4

    filled-new-array {v0, v2}, [I

    move-result-object v19

    const/16 v0, 0x26ea

    const/16 v2, 0x26ea

    filled-new-array {v0, v2}, [I

    move-result-object v20

    const/16 v0, 0x26f2

    const/16 v2, 0x26f3

    filled-new-array {v0, v2}, [I

    move-result-object v21

    const/16 v0, 0x26f5

    const/16 v2, 0x26f5

    filled-new-array {v0, v2}, [I

    move-result-object v22

    const/16 v0, 0x26fa

    const/16 v2, 0x26fa

    filled-new-array {v0, v2}, [I

    move-result-object v23

    const/16 v0, 0x26fd

    const/16 v2, 0x26fd

    filled-new-array {v0, v2}, [I

    move-result-object v24

    const/16 v0, 0x2705

    const/16 v2, 0x2705

    filled-new-array {v0, v2}, [I

    move-result-object v25

    const/16 v0, 0x270a

    const/16 v2, 0x270b

    filled-new-array {v0, v2}, [I

    move-result-object v26

    const/16 v0, 0x2728

    const/16 v2, 0x2728

    filled-new-array {v0, v2}, [I

    move-result-object v27

    const/16 v0, 0x274c

    const/16 v2, 0x274c

    filled-new-array {v0, v2}, [I

    move-result-object v28

    const/16 v0, 0x274e

    const/16 v2, 0x274e

    filled-new-array {v0, v2}, [I

    move-result-object v29

    const/16 v0, 0x2753

    const/16 v2, 0x2755

    filled-new-array {v0, v2}, [I

    move-result-object v30

    const/16 v0, 0x2757

    const/16 v2, 0x2757

    filled-new-array {v0, v2}, [I

    move-result-object v31

    const/16 v0, 0x2795

    const/16 v2, 0x2797

    filled-new-array {v0, v2}, [I

    move-result-object v32

    const/16 v0, 0x27b0

    const/16 v2, 0x27b0

    filled-new-array {v0, v2}, [I

    move-result-object v33

    const/16 v0, 0x27bf

    const/16 v2, 0x27bf

    filled-new-array {v0, v2}, [I

    move-result-object v34

    const/16 v0, 0x2b1b

    const/16 v2, 0x2b1c

    filled-new-array {v0, v2}, [I

    move-result-object v35

    const/16 v0, 0x2b50

    const/16 v2, 0x2b50

    filled-new-array {v0, v2}, [I

    move-result-object v36

    const/16 v0, 0x2b55

    const/16 v2, 0x2b55

    filled-new-array {v0, v2}, [I

    move-result-object v37

    const/16 v0, 0x2e80

    const/16 v2, 0x2e99

    filled-new-array {v0, v2}, [I

    move-result-object v38

    const/16 v0, 0x2e9b

    const/16 v2, 0x2ef3

    filled-new-array {v0, v2}, [I

    move-result-object v39

    const/16 v0, 0x2f00

    const/16 v2, 0x2fd5

    filled-new-array {v0, v2}, [I

    move-result-object v40

    const/16 v0, 0x2ff0

    const/16 v2, 0x2ffb

    filled-new-array {v0, v2}, [I

    move-result-object v41

    const/16 v0, 0x3000

    const/16 v2, 0x303e

    filled-new-array {v0, v2}, [I

    move-result-object v42

    const/16 v0, 0x3041

    const/16 v2, 0x3096

    filled-new-array {v0, v2}, [I

    move-result-object v43

    const/16 v0, 0x3099

    const/16 v2, 0x30ff

    filled-new-array {v0, v2}, [I

    move-result-object v44

    const/16 v0, 0x3105

    const/16 v2, 0x312f

    filled-new-array {v0, v2}, [I

    move-result-object v45

    const/16 v0, 0x3131

    const/16 v2, 0x318e

    filled-new-array {v0, v2}, [I

    move-result-object v46

    const/16 v0, 0x3190

    const/16 v2, 0x31e3

    filled-new-array {v0, v2}, [I

    move-result-object v47

    const/16 v0, 0x31f0

    const/16 v2, 0x321e

    filled-new-array {v0, v2}, [I

    move-result-object v48

    const/16 v0, 0x3220

    const/16 v2, 0x3247

    filled-new-array {v0, v2}, [I

    move-result-object v49

    const/16 v0, 0x3250

    const/16 v2, 0x4dbf

    filled-new-array {v0, v2}, [I

    move-result-object v50

    const/16 v0, 0x4e00

    const v2, 0xa48c

    filled-new-array {v0, v2}, [I

    move-result-object v51

    const v0, 0xa490

    const v2, 0xa4c6

    filled-new-array {v0, v2}, [I

    move-result-object v52

    const v0, 0xa960

    const v2, 0xa97c

    filled-new-array {v0, v2}, [I

    move-result-object v53

    const v0, 0xac00

    const v2, 0xd7a3

    filled-new-array {v0, v2}, [I

    move-result-object v54

    const v0, 0xf900

    const v2, 0xfaff

    filled-new-array {v0, v2}, [I

    move-result-object v55

    const v0, 0xfe10

    const v2, 0xfe19

    filled-new-array {v0, v2}, [I

    move-result-object v56

    const v0, 0xfe30

    const v2, 0xfe52

    filled-new-array {v0, v2}, [I

    move-result-object v57

    const v0, 0xfe54

    const v2, 0xfe66

    filled-new-array {v0, v2}, [I

    move-result-object v58

    const v0, 0xfe68

    const v2, 0xfe6b

    filled-new-array {v0, v2}, [I

    move-result-object v59

    const v0, 0xff01

    const v2, 0xff60

    filled-new-array {v0, v2}, [I

    move-result-object v60

    const v0, 0xffe0

    const v2, 0xffe6

    filled-new-array {v0, v2}, [I

    move-result-object v61

    const v0, 0x16fe0

    filled-new-array {v0, v1}, [I

    move-result-object v62

    const v0, 0x16ff0

    const v1, 0x16ff1

    filled-new-array {v0, v1}, [I

    move-result-object v63

    const v0, 0x17000

    const v1, 0x187f7

    filled-new-array {v0, v1}, [I

    move-result-object v64

    const v0, 0x18800

    const v1, 0x18cd5

    filled-new-array {v0, v1}, [I

    move-result-object v65

    const v0, 0x18d00

    const v1, 0x18d08

    filled-new-array {v0, v1}, [I

    move-result-object v66

    const v0, 0x1b000

    const v1, 0x1b11e

    filled-new-array {v0, v1}, [I

    move-result-object v67

    const v0, 0x1b150

    const v1, 0x1b152

    filled-new-array {v0, v1}, [I

    move-result-object v68

    const v0, 0x1b164

    const v1, 0x1b167

    filled-new-array {v0, v1}, [I

    move-result-object v69

    const v0, 0x1b170

    const v1, 0x1b2fb

    filled-new-array {v0, v1}, [I

    move-result-object v70

    const v0, 0x1f004

    const v1, 0x1f004

    filled-new-array {v0, v1}, [I

    move-result-object v71

    const v0, 0x1f0cf

    const v1, 0x1f0cf

    filled-new-array {v0, v1}, [I

    move-result-object v72

    const v0, 0x1f18e

    const v1, 0x1f18e

    filled-new-array {v0, v1}, [I

    move-result-object v73

    const v0, 0x1f191

    const v1, 0x1f19a

    filled-new-array {v0, v1}, [I

    move-result-object v74

    const v0, 0x1f200

    const v1, 0x1f202

    filled-new-array {v0, v1}, [I

    move-result-object v75

    const v0, 0x1f210

    const v1, 0x1f23b

    filled-new-array {v0, v1}, [I

    move-result-object v76

    const v0, 0x1f240

    const v1, 0x1f248

    filled-new-array {v0, v1}, [I

    move-result-object v77

    const v0, 0x1f250

    const v1, 0x1f251

    filled-new-array {v0, v1}, [I

    move-result-object v78

    const v0, 0x1f260

    const v1, 0x1f265

    filled-new-array {v0, v1}, [I

    move-result-object v79

    const v0, 0x1f300

    const v1, 0x1f320

    filled-new-array {v0, v1}, [I

    move-result-object v80

    const v0, 0x1f32d

    const v1, 0x1f335

    filled-new-array {v0, v1}, [I

    move-result-object v81

    const v0, 0x1f337

    const v1, 0x1f37c

    filled-new-array {v0, v1}, [I

    move-result-object v82

    const v0, 0x1f37e

    const v1, 0x1f393

    filled-new-array {v0, v1}, [I

    move-result-object v83

    const v0, 0x1f3a0

    const v1, 0x1f3ca

    filled-new-array {v0, v1}, [I

    move-result-object v84

    const v0, 0x1f3cf

    const v1, 0x1f3d3

    filled-new-array {v0, v1}, [I

    move-result-object v85

    const v0, 0x1f3e0

    const v1, 0x1f3f0

    filled-new-array {v0, v1}, [I

    move-result-object v86

    const v0, 0x1f3f4

    const v1, 0x1f3f4

    filled-new-array {v0, v1}, [I

    move-result-object v87

    const v0, 0x1f3f8

    const v1, 0x1f43e

    filled-new-array {v0, v1}, [I

    move-result-object v88

    const v0, 0x1f440

    const v1, 0x1f440

    filled-new-array {v0, v1}, [I

    move-result-object v89

    const v0, 0x1f442

    const v1, 0x1f4fc

    filled-new-array {v0, v1}, [I

    move-result-object v90

    const v0, 0x1f4ff

    const v1, 0x1f53d

    filled-new-array {v0, v1}, [I

    move-result-object v91

    const v0, 0x1f54b

    const v1, 0x1f54e

    filled-new-array {v0, v1}, [I

    move-result-object v92

    const v0, 0x1f550

    const v1, 0x1f567

    filled-new-array {v0, v1}, [I

    move-result-object v93

    const v0, 0x1f57a

    const v1, 0x1f57a

    filled-new-array {v0, v1}, [I

    move-result-object v94

    const v0, 0x1f595

    const v1, 0x1f596

    filled-new-array {v0, v1}, [I

    move-result-object v95

    const v0, 0x1f5a4

    const v1, 0x1f5a4

    filled-new-array {v0, v1}, [I

    move-result-object v96

    const v0, 0x1f5fb

    const v1, 0x1f64f

    filled-new-array {v0, v1}, [I

    move-result-object v97

    const v0, 0x1f680

    const v1, 0x1f6c5

    filled-new-array {v0, v1}, [I

    move-result-object v98

    const v0, 0x1f6cc

    const v1, 0x1f6cc

    filled-new-array {v0, v1}, [I

    move-result-object v99

    const v0, 0x1f6d0

    const v1, 0x1f6d2

    filled-new-array {v0, v1}, [I

    move-result-object v100

    const v0, 0x1f6d5

    const v1, 0x1f6d7

    filled-new-array {v0, v1}, [I

    move-result-object v101

    const v0, 0x1f6eb

    const v1, 0x1f6ec

    filled-new-array {v0, v1}, [I

    move-result-object v102

    const v0, 0x1f6f4

    const v1, 0x1f6fc

    filled-new-array {v0, v1}, [I

    move-result-object v103

    const v0, 0x1f7e0

    const v1, 0x1f7eb

    filled-new-array {v0, v1}, [I

    move-result-object v104

    const v0, 0x1f90c

    const v1, 0x1f93a

    filled-new-array {v0, v1}, [I

    move-result-object v105

    const v0, 0x1f93c

    const v1, 0x1f945

    filled-new-array {v0, v1}, [I

    move-result-object v106

    const v0, 0x1f947

    const v1, 0x1f978

    filled-new-array {v0, v1}, [I

    move-result-object v107

    const v0, 0x1f97a

    const v1, 0x1f9cb

    filled-new-array {v0, v1}, [I

    move-result-object v108

    const v0, 0x1f9cd

    const v1, 0x1f9ff

    filled-new-array {v0, v1}, [I

    move-result-object v109

    const v0, 0x1fa70

    const v1, 0x1fa74

    filled-new-array {v0, v1}, [I

    move-result-object v110

    const v0, 0x1fa78

    const v1, 0x1fa7a

    filled-new-array {v0, v1}, [I

    move-result-object v111

    const v0, 0x1fa80

    const v1, 0x1fa86

    filled-new-array {v0, v1}, [I

    move-result-object v112

    const v0, 0x1fa90

    const v1, 0x1faa8

    filled-new-array {v0, v1}, [I

    move-result-object v113

    const v0, 0x1fab0

    const v1, 0x1fab6

    filled-new-array {v0, v1}, [I

    move-result-object v114

    const v0, 0x1fac0

    const v1, 0x1fac2

    filled-new-array {v0, v1}, [I

    move-result-object v115

    const v0, 0x1fad0

    const v1, 0x1fad6

    filled-new-array {v0, v1}, [I

    move-result-object v116

    const/high16 v0, 0x20000

    const v1, 0x2fffd

    filled-new-array {v0, v1}, [I

    move-result-object v117

    const/high16 v0, 0x30000

    const v1, 0x3fffd

    filled-new-array {v0, v1}, [I

    move-result-object v118

    filled-new-array/range {v3 .. v118}, [[I

    move-result-object v0

    sput-object v0, Lcom/termux/terminal/WcWidth;->WIDE_EASTASIAN:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static intable([[II)Z
    .locals 7

    const/4 v0, 0x0

    .line 469
    aget-object v1, p0, v0

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    return v0

    .line 473
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v0

    :goto_0
    if-lt v1, v3, :cond_3

    add-int v4, v3, v1

    .line 475
    div-int/lit8 v4, v4, 0x2

    .line 476
    aget-object v5, p0, v4

    aget v6, v5, v2

    if-ge v6, p1, :cond_1

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 478
    :cond_1
    aget v1, v5, v0

    if-le v1, p1, :cond_2

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static width(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0x34f

    if-eq p0, v1, :cond_6

    const/16 v1, 0x200b

    if-gt v1, p0, :cond_0

    const/16 v1, 0x200f

    if-le p0, v1, :cond_6

    :cond_0
    const/16 v1, 0x2028

    if-eq p0, v1, :cond_6

    const/16 v1, 0x2029

    if-eq p0, v1, :cond_6

    const/16 v1, 0x202a

    if-gt v1, p0, :cond_1

    const/16 v1, 0x202e

    if-le p0, v1, :cond_6

    :cond_1
    const/16 v1, 0x2060

    if-gt v1, p0, :cond_2

    const/16 v1, 0x2063

    if-gt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_6

    const/16 v1, 0x7f

    if-gt v1, p0, :cond_3

    const/16 v1, 0xa0

    if-ge p0, v1, :cond_3

    goto :goto_1

    .line 504
    :cond_3
    sget-object v1, Lcom/termux/terminal/WcWidth;->ZERO_WIDTH:[[I

    invoke-static {v1, p0}, Lcom/termux/terminal/WcWidth;->intable([[II)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 506
    :cond_4
    sget-object v0, Lcom/termux/terminal/WcWidth;->WIDE_EASTASIAN:[[I

    invoke-static {v0, p0}, Lcom/termux/terminal/WcWidth;->intable([[II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public static width([CI)I
    .locals 2

    .line 511
    aget-char v0, p0, p1

    .line 512
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    invoke-static {v0, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    invoke-static {p0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p0

    :goto_0
    return p0
.end method
