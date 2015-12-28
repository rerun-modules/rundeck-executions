# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Mon Dec 28 11:49:12 PST 2015
#
#/ usage: rundeck-executions:output  --id <>  --url <${RUNDECK_URL:-}> [ --username <${RUNDECK_USER:-}>] [ --password <${RUNDECK_PASSWORD:-}>] [ --apikey <${RUNDECK_APIKEY:-}>] [ --lastlines <>] [ --format <>] [ --offset <0>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while (( "$#" > 0 ))
    do
        OPT="$1"
        case "$OPT" in
            --id) rerun_option_check $# $1; ID=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            --username) rerun_option_check $# $1; USERNAME=$2 ; shift ;;
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --apikey) rerun_option_check $# $1; APIKEY=$2 ; shift ;;
            --lastlines) rerun_option_check $# $1; LASTLINES=$2 ; shift ;;
            --format) rerun_option_check $# $1; FORMAT=$2 ; shift ;;
            --offset) rerun_option_check $# $1; OFFSET=$2 ; shift ;;
            # help option
            -|--*?) echo >&2 "unrecognized option: $OPT"
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [[ -z "$URL" ]] && URL="$(rerun_property_get $RERUN_MODULE_DIR/options/url DEFAULT)"
    [[ -z "$USERNAME" ]] && USERNAME="$(rerun_property_get $RERUN_MODULE_DIR/options/username DEFAULT)"
    [[ -z "$PASSWORD" ]] && PASSWORD="$(rerun_property_get $RERUN_MODULE_DIR/options/password DEFAULT)"
    [[ -z "$OFFSET" ]] && OFFSET="$(rerun_property_get $RERUN_MODULE_DIR/options/offset DEFAULT)"
    # Check required options are set
    [[ -z "$ID" ]] && { echo >&2 "missing required option: --id" ; return 2 ; }
    [[ -z "$URL" ]] && { echo >&2 "missing required option: --url" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export URL
    export USERNAME
    export PASSWORD
    export APIKEY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${ID:=}
: ${URL:=}
: ${USERNAME:=}
: ${PASSWORD:=}
: ${APIKEY:=}
: ${LASTLINES:=}
: ${FORMAT:=}
: ${OFFSET:=}

