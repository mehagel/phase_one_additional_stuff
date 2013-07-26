
batch           = Batch.new
peanut_butter   =Cookie.new(peanut_butter)
chocolate_chip  =Cookie.new(chocolate_chip)
oatmeal         =Cookie.new(oatmeal)


batch.cookie(peanut_butter)
batch.cookie(oatmeal)
batch.cookie(chocolate_chip)

batch.in_oven(peanut_butter)
batch.in_oven(chocolate_chip)
batch.in_oven(oatmeal)

batch.cook_time(peanut_butter)
batch.cook_time(oatmeal)
batch.cook_time(chocolate_chip)

batch.cookies_done(oatmeal)
batch.cookies_done(peanut_butter)
batch.cookies_done(chocolate_chip)
