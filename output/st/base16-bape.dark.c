

// Base16 Bape dark - simple terminal color setup
// Stefan Bowerman (http://github.com/stefbowerman)
static const char *colorname[] = {
	/* Normal colors */
	"#171717", /*  0: Base 00 - Black   */
	"#aa7944", /*  1: Base 08 - Red     */
	"#597a56", /*  2: Base 0B - Green   */
	"#d8cea3", /*  3: Base 0A - Yellow  */
	"#f1a856", /*  4: Base 0D - Blue    */
	"#dbd886", /*  5: Base 0E - Magenta */
	"#379b58", /*  6: Base 0C - Cyan    */
	"#e2cdb5", /*  7: Base 05 - White   */

	/* Bright colors */
	"#9c8a79", /*  8: Base 03 - Bright Black */
	"#aa7944", /*  9: Base 08 - Red          */
	"#597a56", /* 10: Base 0B - Green        */
	"#d8cea3", /* 11: Base 0A - Yellow       */
	"#f1a856", /* 12: Base 0D - Blue         */
	"#dbd886", /* 13: Base 0E - Magenta      */
	"#379b58", /* 14: Base 0C - Cyan         */
	"#ede3d9", /* 15: Base 05 - Bright White */

	/* A few more colors */

	"#dbc040", /* 16: Base 09 */
	"#7c5041", /* 17: Base 0F */
	"#3f3a36", /* 18: Base 01 */
	"#685e54", /* 19: Base 02 */
	"#ddc3a4", /* 20: Base 04 */
	"#e7d8c6", /* 21: Base 06 */

	[255] = 0,

	[256] = "#e2cdb5", /* default fg: Base 05 */
	[257] = "#171717", /* default bg: Base 00 */	
};

// Foreground, background and cursor
static unsigned int defaultfg = 256;
static unsigned int defaultbg = 257;
static unsigned int defaultcs = 256;

