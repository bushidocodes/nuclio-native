-- example wrk script which demonstrates setting the x-nuclio-arguments header
-- See https://github.com/wg/wrk/blob/master/SCRIPTING for more information
-- Note that THIS IS EFFECTIVELY UNTESTED, as I can't find a way to confirm the output

wrk.headers["x-nuclio-arguments"] = "Argument"
