# SPDX-License-Identifier: GPL-2.0-or-later
# FinSetsForCAP: The (skeletal) elementary topos of finite sets
#
# Reading the implementation part of the package.
#

include( "gap/Tools.gi.autogen.jl" );

include( "gap/precompiled_categories/SkeletalCategoryOfFiniteSetsWithMorphismsGivenByLists_precompiled.gi.autogen.jl" );

include( "gap/FinSets.gi.autogen.jl" );

include( "gap/SkeletalFinSets.gi.autogen.jl" );

#= comment for Julia
if IsPackageMarkedForLoading( "JuliaInterface", ">= 0.2" ) then
    # COVERAGE_IGNORE_NEXT_LINE
    include( "gap/Julia.gi.autogen.jl" );
fi;
# =#

include( "gap/init.gi.autogen.jl" );
