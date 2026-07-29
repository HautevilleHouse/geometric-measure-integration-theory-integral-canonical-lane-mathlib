import canonicalLaneMathlib.AdmissibleClass
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureDomain
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.HausdorffMeasure

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure AreaCoareaFormulaPackage (G : GeometricMeasureDomain) (H : HausdorffMeasurePackage G) where
  lipschitzFunction : G.carrier → ℝ
  areaFormula : Prop
  coareaFormula : Prop
  jacobianFactor : Prop

structure AreaCoareaFormulaEvidence {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (A : AreaCoareaFormulaPackage G H) where
  areaFormulaClosed : A.areaFormula
  coareaFormulaClosed : A.coareaFormula
  jacobianFactorClosed : A.jacobianFactor

def AreaCoareaFormulaClosed {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (A : AreaCoareaFormulaPackage G H) : Prop :=
  A.areaFormula ∧ A.coareaFormula ∧ A.jacobianFactor

theorem area_coarea_formula_closed_from_evidence {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (A : AreaCoareaFormulaPackage G H) (E : AreaCoareaFormulaEvidence A) : AreaCoareaFormulaClosed A :=
  And.intro E.areaFormulaClosed (And.intro E.coareaFormulaClosed E.jacobianFactorClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse