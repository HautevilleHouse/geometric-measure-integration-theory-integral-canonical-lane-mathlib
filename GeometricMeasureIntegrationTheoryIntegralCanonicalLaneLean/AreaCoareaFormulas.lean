import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.RectifiableSets

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure AreaCoareaPackage {R : RectifiableSetPackage} where
  lipschitzMap : RectifiableSetPackage → RectifiableSetPackage
  areaFormula : Prop
  coareaFormula : Prop
  jacobianFactor : Prop

structure AreaCoareaEvidence {R : RectifiableSetPackage}
    (A : AreaCoareaPackage R) where
  areaFormulaClosed : A.areaFormula
  coareaFormulaClosed : A.coareaFormula
  jacobianFactorClosed : A.jacobianFactor

def AreaCoareaClosed {R : RectifiableSetPackage} (A : AreaCoareaPackage R) : Prop :=
  A.areaFormula ∧ A.coareaFormula ∧ A.jacobianFactor

theorem area_coarea_closed_from_evidence {R : RectifiableSetPackage}
    (A : AreaCoareaPackage R) (E : AreaCoareaEvidence A) : AreaCoareaClosed A := by
  exact And.intro E.areaFormulaClosed (And.intro E.coareaFormulaClosed E.jacobianFactorClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse